class Admin::CampaignsController < AdminController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update(campaign_params)
      flash[:success] = "Update '#{@campaign.title}' successfully"
      redirect_to admin_campaign_path(@campaign)
    else       
      render 'admin/campaigns/edit'
    end 
  end

  private 

  def campaign_params
    params.require(:campaign).permit(:title, :description)
  end 
end
