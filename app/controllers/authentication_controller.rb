class AuthenticationController < ApplicationController
  # user needs to be authenticated before every endpoint call, this doesnt apply on the authenticate
  # endpoint, since it doesn't require the user to be authenticated in the first place
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
