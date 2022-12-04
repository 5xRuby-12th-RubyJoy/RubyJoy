# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def vender_new
    @user = User.new
  end

  def vender_create
    @user = User.new(vender_params)
    if @user.save
      redirect_to root_path, notice: "註冊成功"
    else
      render :vender_new
    end
  end

  private

  def vender_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end
