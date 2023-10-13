class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    render json: User.all
  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user, status: :accepted
end

  def user_details
    user_details = User.find(params[:id])
    render json: user_details, status: :ok
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { errors: ["Not authorized"] }, status: :unauthorized
    end
  end

  private
  def render_not_found_response
    render json: { errors: ["User Not Found"] }, status: :not_found
  end

  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end
end
