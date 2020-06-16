class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  # make this methods accessible in view
  helper_method :current_user, :current_business

  # authenticate user for all controllers and all actions
  # unless specified otherwise in each controller
  before_filter :authenticate_user

  # authenticate user function, redirect to login page if not logged in
  def authenticate_user
    redirect_to login_path, notice: "Please login first" if current_user.blank?
  end
end
