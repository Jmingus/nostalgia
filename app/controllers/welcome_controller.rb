class WelcomeController < ApplicationController
  def index
    @scraps = Scrap.favorite_tag
    @user = current_user
  end
end
