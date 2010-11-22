class OrdersController < ApplicationController
  def index
  end

  def new
	
	@title = "New Order"
	@deal = Deal.find(params[:id])

	@user = current_user
if user_signed_in? == false 

	@user = User.new
  end
	@order = Order.new


  end

  def create


if user_signed_in? == false 

@user = User.create(params[:user])

params[:order][:user_id] = @user.id

end 


quantity = params[:order][:quantity].to_i

until quantity == 0

@order = Order.new(params[:order])


@order.coupon_no = @order.user_id
@order.save

@coupon = Coupon.new

@coupon.order_id = @order.id
@coupon.user_id = @order.user_id
@coupon.deal_id = @order.deal_id
@coupon.status = 2

@coupon.save

quantity -= 1

end

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
