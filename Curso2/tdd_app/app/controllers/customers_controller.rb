class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :show]
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new 
  end

  def edit
  end

  def update
    if @customer.update(params_customer)
      redirect_to customer_path(@customer.id), 
      notice: 'Cliente atualizado com sucesso!'
    else
      render :edit
  end
 end
  
  def create
    @customer = Customer.new(params_customer)
    
    if @customer.save
      redirect_to customers_path, notice: 'Cliente cadastrado com sucesso'
    else 
      render :new
    end
  end

  
  private
  def set_customer
    @customer = Customer.find(params[:id])
  end
  
  def params_customer
    params.require(:customer).permit(:id,:name,:email,:smoker,:phone,:avatar)
  end

  def show
  end 

  

end
