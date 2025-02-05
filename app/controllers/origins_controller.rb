class OriginsController < ApplicationController

  def index

    if user_session
        puts current_user.id
        user_session["song_cart"] = "Single Ladies"
        puts user_session
    end

    @origins = Origin.all

  end

  def new
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def show
    @origin = Origin.find(params[:id])
  end

  private
  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end