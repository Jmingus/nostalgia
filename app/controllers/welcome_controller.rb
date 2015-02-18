class WelcomeController < ApplicationController
  def index
    @scraps = Scrap.favorite_tag
    @user = current_user
  end

  def all_report
    respond_to do |format|
      format.csv do
        render text: User.to_csv
      end
    end
  end

end
