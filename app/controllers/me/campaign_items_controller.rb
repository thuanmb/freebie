class Me::CampaignItemsController < AdminController

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_item = CampaignItem.find(params[:id])
  end 

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_item = CampaignItem.find(params[:id])

    if @campaign_item.update(campaign_item_params)
      flash[:success] = "Update '#{@campaign_item.name}' successfully"
      redirect_to me_campaign_path(@campaign)
    else       
      render 'me/campaign_items/edit'
    end 
  end 

  def new
    puts params
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_item = CampaignItem.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_item = CampaignItem.create(campaign_item_params)
    @campaign_item.campaign = @campaign

    if @campaign_item.save
      redirect_to me_campaign_path(@campaign)
    else
      render 'me/campaign_items/new'
    end
  end

  private 
  
  def campaign_item_params
    params.require(:campaign_item).permit(:name, :label, :target_qty, :collected_qty)
  end 

end
