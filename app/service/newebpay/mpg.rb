module Newebpay
  class Mpg
    attr_accessor :info

    def initialize(params)

      @key = ENV["MERCHANT_HASH_KEY"]
      @iv = ENV["MERCHANT_HASH_IV"]
      @merchant_id = ENV["MERCHANT_ID"]
      @info = {}
      set_info(params)
    end

    # 把資料打包成要POST出去的格式
    def form_info
      {
        MerchantID: @merchant_id,
        TradeInfo: trade_info,
        TradeSha: trade_sha,
        Version: '1.6'
      }
    end

    private

    def trade_info
      aes_encode(url_encoded_query_string)
    end

    def trade_sha
      sha256_encode(@key, @iv, trade_info)
    end

    def set_info(order)
      info[:MerchantID] = @merchant_id
      info[:MerchantOrderNo] = order.serial
      info[:Amt] = order.price.to_i
      info[:ItemDesc] = order.product_id
      info[:TimeStamp] = Time.now.to_i
      info[:RespondType] = 'JSON'
      info[:Version] = '1.6'
      info[:ReturnURL] = "https://https://rubyjoy-5xruby.herokuapp.com//orders/pay"
      info[:LoginType] = 0
      info[:CREDIT] =  1
      info[:VACC] = 1
    end

    def url_encoded_query_string
      URI.encode_www_form(info)
    end

    # 第一道加密 藍新的規則
    def aes_encode(string)
      cipher = OpenSSL::Cipher.new('aes-256-cbc')
      cipher.encrypt
      cipher.key = @key
      cipher.iv = @iv
      cipher.padding = 0
      padding_data = add_padding(string)
      encrypted = cipher.update(padding_data) + cipher.final
      encrypted.unpack1('H*')
    end

    def add_padding(data, block_size = 32)
      pad = block_size - (data.length % block_size)
      data + (pad.chr * pad)
    end

    # 第二道SHA加密
    def sha256_encode(key, iv, trade_info)
      encode_string = "HashKey=#{key}&#{trade_info}&HashIV=#{iv}"
      Digest::SHA256.hexdigest(encode_string).upcase
    end
  end
end
