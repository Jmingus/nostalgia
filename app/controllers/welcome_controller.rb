class WelcomeController < ApplicationController
  def index
    @scraps = Scrap.all
    @user = current_user
  end
end
