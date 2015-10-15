class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
