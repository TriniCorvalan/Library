class HomeController < ApplicationController
  def index
  end

  def profile
    @user = current_user
    @books = Book.where(user: current_user)
  end
end
