class UsersController < ApplicationController

  def index
  end

  def new
  end

  def show
  end

  def create
    User.find(current_user).signup_confirmation
  end

end
