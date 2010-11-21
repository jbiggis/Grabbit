class OrdersController < ApplicationController
  def index
  end

  def new
	
	@title = "New Order"
	@deal = Deal.find(3)

if user_signed_in? == false 

	@user = User.new
  end
	@order = Order.new


  end

  def create



  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
