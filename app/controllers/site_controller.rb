class SiteController < ApplicationController

  before_action :is_authenticated?, only: [:secret]

  def index
    @user = current_user
  end

end