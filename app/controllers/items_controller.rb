class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: {status: 200, items: items}
  end

  def show
    item = Item.find(params[:id])
    render json: {status: 200, item: item}
  end
end
