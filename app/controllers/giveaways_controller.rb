# Wizard process to give stuff away.
# - Ask new use to select location. This will be saved to user profile and will not be asked again.
# - Select a category. e.g. Money, Yourself, Clothes, Furnitures, Others
# - Browse campaigns.
# - Create a new post
class GiveawaysController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.contact_city.blank?
      redirect_to :select_location_giveaways
    else
      redirect_to :select_category_giveaways
    end
  end

  # GET /giveaway/edit_location
  def select_location
    @user = current_user
  end

  # PUT /giveaway/edit_location
  def edit_location
    @user = current_user
    if user_params[:contact_city].blank?
      @user.errors.add(:contact_city, I18n.t('errors.messages.blank'))
      render :select_location
    elsif  @user.update(user_params)
      redirect_to :select_category_giveaways, notice: t('giveaway.location.message')
    else
      redirect_to :edit_location_giveaways
    end
  end

  def select_category
    @categories = Category.all
  end

  def select_campaign
    @category = Category.find(params[:category])
    @campaigns = @category.campaigns
    redirect_to new_post_path(category: @category) if @campaigns.empty?
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :is_admin, :is_organization, :avatar_url, :description, :contact_address, :contact_city)
  end

end
