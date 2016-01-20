class AdminController < ApplicationController
  layout 'application'

  before_action :authenticate_user!
end
