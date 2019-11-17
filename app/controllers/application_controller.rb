class ApplicationController < ActionController::API
  # by default user needs to be authenticated
  before_action :authenticate_request
  # the currently authenticated user
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: "Not Authorized" }, status: 401 unless @current_user
  end
end
