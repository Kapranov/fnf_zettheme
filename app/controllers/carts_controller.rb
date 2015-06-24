class CartsController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  def show
    @order_items = current_order.order_items
  end
end
