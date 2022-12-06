# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def vendor_new
    @user = User.new
  end

  def vendor_create
    @user = User.new(vendor_params)
    if @user.save
      redirect_to root_path, notice: '註冊成功'
    else
      render :vendor_new
    end
  end

  private

  def vendor_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end
