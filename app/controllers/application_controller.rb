class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def new_guest
    user = User.find_or_create_by!(email: 'guest@email.com') do |user|
      user.password = 'guest1111'
      user.password_confirmation = 'guest1111'
      user.nickname = 'ゲスト'
    end
    sign_in user
    redirect_to root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :teacher])
  end

end
