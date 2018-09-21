class HomesController < ApplicationController
  def index
    if user_signed_in?
      @feed_items = current_user.feed.includes(:tags).page(params[:page])
    end
  end
end
