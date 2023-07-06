require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  context 'as a Guest' do
    it 'responds successfully' do
      get :index
      puts response.inspect
      expect(response).to be_successful
    end

  end
  
  it 'responds with a 302 response (not authorized)' do
    @customer = create(:customer)
    get :new, params: { id: @customer.id }
    expect(response).to have_http_status(302)
  end
  context 'as a logged member' do
    before do
      @member = create(:member)
      @customer = create(:customer)
    end
    
    it 'Route' do
      is_expected.to route(:get, '/customers').to(action: :index)
    end


    it 'Content type JSON' do
      customer_params = attributes_for(:customer)
      sign_in @member      
      post :create, format: :json, params: {customer: customer_params}
      expect(response.content_type).to match(/application\/json/) 
    end

    it 'Flash notice' do
      customer_params = attributes_for(:customer)
      sign_in @member      
      post :create, params: {customer: customer_params}
      puts response.inspect
      expect(flash[:notice]).to match(/successfully created/)   
    end

    it 'responds 200 response' do
      sign_in @member
      get :show, params: { id: @customer.id }
      expect(response).to have_http_status(200)
    end
  
      it 'with valid attributes' do
        customer_params = attributes_for(:customer)
        sign_in @member      
        expect{
          post :create, params: {customer: customer_params}
        }.to change{Customer.count}.by(1)
      end

      it 'with invalid attributes' do
        customer_params = attributes_for(:customer, address: nil)
        sign_in @member      
        expect{
          post :create, params: {customer: customer_params}
        }.not_to change{Customer.count}
      end
  
      it '#show' do
      
        sign_in @member
      
        get :show, params: { id: @customer.id }
        expect(response).to have_http_status(200)
      end
  
      it 'renders the :show template' do
        sign_in @member
  
        get :show, params: { id: @customer.id }
        expect(response).to render_template("show")
    end
  end
 end

