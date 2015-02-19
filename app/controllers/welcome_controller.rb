class WelcomeController < ApplicationController
  def index
    @scraps = Scrap.favorite_tag
    @user = current_user
  end

  def all_report
    respond_to do |format|
      format.csv do
        send_data User.to_csv, filename: 'users_report.csv', disposition: 'download'
      end
    end
  end

end
