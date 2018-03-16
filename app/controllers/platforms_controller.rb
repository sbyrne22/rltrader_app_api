class PlatformsController < ApplicationController
  def index
    platforms = Platform.all
    render json: {status: 200, platforms: platforms}
  end

  def show
    platform = Platform.find(params[:id])
    render json: {status: 200, platform: platform}
  end
end
