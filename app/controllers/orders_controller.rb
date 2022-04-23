class OrdersController < ApplicationController
  def index
    @orders=Order.all
  end

  def show
    @order=Order.find(params[:id])
  end
  

  def report
    today = DateTime.current.to_date
    @reports = Order.joins(:customer).where("order_date = ?", today)
  end

  def new
    @order=Order.new
    @customers=Customer.all
  end

  def create
    order = Order.create(params.require(:order).permit(:customer_id,:status,:order_date,:total))
    redirect_to orders_path
  end

  def edit
    @customers=Customer.all
    @order=Order.find(params[:id])
  end

  def update
    order = Order.update(params.require(:order).permit(:customer_id,:status,:order_date,:total))
    redirect_to orders_path
  end

  def destroy
    
    order = Order.find(params[:id])
    order.destroy

    redirect_to orders_path
  end

  
end
