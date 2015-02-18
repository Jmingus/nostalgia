class ScrapsController < ApplicationController
  before_action :authenticate_user!
  def new
    @scrap = Scrap.new
  end

  def edit
  end

  def create
    @scrap = Scrap.create(scrap_params)
    user = current_user
    @scrap.user_id = user.id
    if @scrap.save
      redirect_to root_path, flash: { notice: 'Scrap successfully created!' }
    else
      render new: @scrap.errors
    end
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def set_scrap
    @scrap = Scrap.find(params[:id])
  end

  def scrap_params
    params.require(:scrap).permit(:title,:caption,:scrap_picture,:favorite)
  end
end
