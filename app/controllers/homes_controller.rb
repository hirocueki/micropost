class HomesController < ApplicationController
  def index
    if user_signed_in?
      @items = current_user.items.includes(:tags).page(params[:page])
    end
  end
end
