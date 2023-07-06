class ItemsController < ApplicationController
     def index
          items = Item.includes(:user).all 
          render json: items, include: :user
     end
end
