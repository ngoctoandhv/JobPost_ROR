# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  include ActionView::Helpers::TextHelper

  # GET /resource/sign_in
  # def new
  #  super
  # end

  # POST /resource/sign_in
  def create
    #   super
    @user = User.find_by email: params[:user][:email]
    redirect_to :new_user_session if @user.nill?
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
