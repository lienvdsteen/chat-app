class HomeController < ApplicationController
  def index
    @users = User.all.where.not(id: current_user.id)
  end
end
