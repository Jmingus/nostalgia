class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.all
  end

  def show
    @users = User.all
    @scraps = Scrap.all
    respond_to do |format|
      format.csv do
        send_data User.to_csv, filename: 'users_report.csv', disposition: 'download'
      end
      format.html do
        render layout: 'pdf'
      end
      format.html
      format.pdf do
        render :pdf => "users_report.pdf", layout: false, disposition: 'download'
      end
    end
  end

  def all_report
    respond_to do |format|
      format.csv do
        send_data User.to_csv, filename: 'users_report.csv', disposition: 'download'
      end
      format.html do
        render layout: false
      end
      format.pdf do
        render :pdf => "users_report.pdf", layout: false, disposition: 'download'
      end
    end
  end

end
