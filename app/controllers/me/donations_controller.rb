class Me::DonationsController < AdminController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.find(params[:id])
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new(donation_params)
    @donation.campaign = @campaign

    if @donation.save
      redirect_to me_campaign_path(@campaign)
    else
      render 'me/donations/new'
    end
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.find(params[:id])

    if @donation.update(donation_params)
      redirect_to me_campaign_path(@campaign)
    else
      render 'me/donations/edit'
    end
  end

  private 

  def donation_params
    params.require(:donation).permit(:name, :description)
  end 
end
