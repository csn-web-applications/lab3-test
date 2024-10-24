class ApplicationController < ActionController::Base
  before_action :authorize_user
  before_action :method2
  before_action :method3
  before_action :method4

  private

  def authorize_user
    @user = User.find_by(token: cookies[:user_token]) if cookies[:user_token]
  end

  [
    # before actions
    :authorize_user,
    :method2,
    :method3,
    :method4,
    # :action_name
  ]
end
