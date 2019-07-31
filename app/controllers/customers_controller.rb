class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find_by :id => params[:id]
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new customer_params
    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find_by :id => params[:id]
  end

  def update
    @customer = Customer.find_by :id => params[:id]
    if @customer.update customer_params
      redirect_to @customer
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :address, :phone_number, :email)
  end
end
