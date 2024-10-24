class SessionController < ApplicationController
  skip_before_action :authorize_user

  [
    :method2,
    :method3,
    :method4,
    :new
  ]

  # GET /login
  def new
  #   Відображення Form для авторизації
  end

  # Створення сесії користувача
  # POST /login
  def create
    user = User.find_by(email: params[:email], password: params[:password])

    if user
      token = SecureRandom.hex
      user.update(token: token)
      cookies[:user_token] = token
    else
      redirect_to login_path, error: "Пошта чи пароль не коректні"
    end
  end

  # Видалення сесії користувача
  def destroy
    cookies[:user_token] = nil
  end


  private
end
