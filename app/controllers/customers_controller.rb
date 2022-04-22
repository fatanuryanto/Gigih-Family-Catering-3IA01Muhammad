class CustomersController < ApplicationController
  def index
    @customers=Customer.all
  end

  def new
    @customer=Customer.new
  end

  def create
    customer = Customer.create(params.require(:customer).permit(:name, :phone,:address))

    redirect_to customers_path
  end

  def edit
    @customer=Customer.find(params[:id])
  end

  def update
    customer=Customer.find(params[:id])
    customer = Customer.update(params.require(:customer).permit(:name, :phone,:address))

    redirect_to customers_path
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy

    redirect_to customers_path
  end
  
end
