class Admin::CampaignsController < AdminController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def create
    @campaign = Campaign.create(campaign_params)
    @campaign.status = :Draft
    @campaign.user = current_user

    if @campaign.save
      flash[:success] = "Create '#{@campaign.title}' successfully"
      redirect_to admin_campaigns_path 
    else
      render 'admin/campaigns/new'
    end
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
    params.require(:campaign).permit(:title, :description, :image_url, :gmap_location, :donation_instruction, :end_date)
  end 
end
