class OrdersController < ApplicationController
  def index
    @orders=Order.all
  end

  def show
    @order=Order.find(params[:id])
  end

  def new
    @order=Order.new
    @customers=Customer.all
  end

  def create
    order = Order.create(params.require(:order).permit(:name,:order_date,:quantity))

    redirect_to orders_path
  end

  def edit
  end

  def report 
    @reports=Order.all
    @reports=Order.where('order_date=?',DateTime.Current.to_date)
  end
end
