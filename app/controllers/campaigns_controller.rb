class CampaignsController < ApplicationController

  def index
    @campaigns = Campaign.public_campaigns
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

end
