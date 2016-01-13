class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def create

  end

  def new
    @campaign = Campaign.new
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
  end

  def destroy

  end

  private 

  def campaign_params
    # params.require(:campaign).permit(:name, :is_admin, :is_organization, :avatar_url, :description, :contact_address, :contact_city)
  end 
end
