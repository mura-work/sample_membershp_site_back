class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :set_current_user

  def set_current_user
    User.current_user = current_api_v1_user
  end
end
