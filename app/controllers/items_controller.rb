class ItemsController < ApplicationController

  def index 
    items = Item.all.order(:price)
    render json: items, include: :user
  end
end
