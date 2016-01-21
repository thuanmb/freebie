class Me::CampaignsController < AdminController
  def index
    @campaigns = Campaign.where(user: current_user).order(created_at: :desc)
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
      redirect_to me_campaigns_path 
    else
      render 'me/campaigns/new'
    end
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update(campaign_params)
      flash[:success] = "Update '#{@campaign.title}' successfully"
      redirect_to me_campaign_path(@campaign)
    else       
      render 'me/campaigns/edit'
    end 
  end

  def publish
    @campaign = Campaign.find(params[:id])
    if @campaign.publish
      flash[:success] = "Publish '#{@campaign.title}' successfully"
      redirect_to me_campaign_path(@campaign)
    else       
      render 'me/campaigns/show'
    end 
  end

  def expire
    @campaign = Campaign.find(params[:id])
    if @campaign.expire
      flash[:success] = "'#{@campaign.title}' is set to expired."
      redirect_to me_campaign_path(@campaign)
    else
      render 'me/campaigns/show'
    end 
  end

  def finish
    @campaign = Campaign.find(params[:id])
    if @campaign.finish
      flash[:success] = "'#{@campaign.title}' is set to finished."
      redirect_to me_campaign_path(@campaign)
    else       
      render 'me/campaigns/show'
    end 
  end

  private 

  def campaign_params
    params.require(:campaign).permit(:title, :description, :image_url, :gmap_location, :donation_instruction, :end_date)
  end 
end
