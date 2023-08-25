class Api::V1::Auth::AuthenticationController < ApplicationController
  def whoami
    if current_api_v1_user
      render json: { is_login: true, current_user: current_api_v1_user }
    else
      render json: { is_login: false, message: 'ユーザーが存在しません' }
    end
  end
end