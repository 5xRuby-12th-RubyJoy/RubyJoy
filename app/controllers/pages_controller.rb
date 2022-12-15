class PagesController < ApplicationController
  def home
    # @store = current_user.store
    user_signed_in?
    # @store = current_user.store
    
  end

  def sign_in_session; end
end
