class Users::UsersController < ApplicationController
  before_action :set_users_user, only: [:show, :edit, :update, :destroy]

  # GET /users/users
  def index
    @users_users = Users::User.all
  end

  # GET /users/users/1
  def show
  end

  # GET /users/users/new
  def new
    @users_user = Users::User.new
  end

  # GET /users/users/1/edit
  def edit
  end

  # POST /users/users
  def create
    @users_user = Users::User.new(users_user_params)

    if @users_user.save
      redirect_to @users_user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/users/1
  def update
    if @users_user.update(users_user_params)
      redirect_to @users_user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/users/1
  def destroy
    @users_user.destroy
    redirect_to users_users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_user
      @users_user = Users::User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_user_params
      params.require(:users_user).permit(:name)
    end
end