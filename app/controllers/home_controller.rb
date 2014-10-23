class HomeController < ApplicationController
  def index
    if current_user
      render :calendar
    else
      render :index
    end
  end
end
