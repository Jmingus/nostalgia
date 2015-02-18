class WelcomeController < ApplicationController
  def index
    @scraps = Scrap.all.favorite_tag
    @user = current_user
  end
end
