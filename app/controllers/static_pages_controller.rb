class StaticPagesController < ApplicationController
  skip_before_action :ensure_login, only: [:home, :about, :contact, :register, :search]

  respond_to :js

  def home
  end

  def about
  end

  def contact
  end

  def login
  end

  def profile
      @user = User.find(params[:id])
  end

  def edit_profile
  end
end
