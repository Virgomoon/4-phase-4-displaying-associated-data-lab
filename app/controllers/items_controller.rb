class ItemsController < ApplicationController
    def index
        items = Item.all.order(:desc)
        render json:items, include: :user
    end
end
