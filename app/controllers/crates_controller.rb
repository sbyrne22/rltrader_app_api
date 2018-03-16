class CratesController < ApplicationController
  def index
    crates = Crate.all
    render json: {status: 200, platforms: crates}
  end

  def show
    crate = Crate.find(params[:id])
    render json: {status: 200, crate: crate}
  end
end
