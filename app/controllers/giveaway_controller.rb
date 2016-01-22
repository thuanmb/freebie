# Wizard process to give stuff away.
# - Ask new use to select location. This will be saved to user profile and will not be asked again.
# - Select a category. e.g. Money, Yourself, Clothes, Furnitures, Others
# - Browse campaigns.
# - Create a new post
class GiveawayController < ApplicationController
  def index
    if current_user.contact_city.blank? || current_user.contact_address.blank?
      redirect_to :giveaway_edit_location
    end
  end

  # GET /giveaway/edit_location
  def select_location
    @user = current_user
  end

  # PUT /giveaway/edit_location
  def edit_location
    @user = current_user
    if user_params[:contact_address].blank? && user_params[:contact_city].blank?
      @user.errors.add(:contact_address, I18n.t('errors.messages.blank'))
      @user.errors.add(:contact_city, I18n.t('errors.messages.blank'))
      render :select_location
    elsif  @user.update(user_params)
      redirect_to root_path, notice: 'User location was successfully updated.'
    else
      redirect_to :giveaway_edit_location
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :is_admin, :is_organization, :avatar_url, :description, :contact_address, :contact_city)
  end

end
