class UsersController < ApplicationController
  layout 'form', only: [:new]

  def index
  end

  def new
    @user = User.new
  end

  def create
  end

  def show
  end

end
