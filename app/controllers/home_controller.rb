class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @memoids = @current_user.memoids
  end
end
