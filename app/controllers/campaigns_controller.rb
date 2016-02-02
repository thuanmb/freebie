class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.public_campaigns
  end

  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @campaign = Campaign.find(params[:id])
  end

  def ask_to_donate
    @campaign = Campaign.find(params[:id])
    subject = "#{donation_params[:name]} - #{donation_params[:email_or_phone]} at #{donation_params[:address]} contacted for campaign #{@campaign.title}"
    conversation = current_user.send_message(@campaign.user, donation_params[:message], subject).conversation
    flash[:success] = I18n.t('campaign.message.success')
    redirect_to campaign_path(@campaign)
  end 

  private 

  def donation_params
    params.require(:donation).permit(:email_or_phone, :message, :name, :address)
  end 

end
