class AdminController < ApplicationController
  layout 'me'

  before_action :authenticate_user!
end
