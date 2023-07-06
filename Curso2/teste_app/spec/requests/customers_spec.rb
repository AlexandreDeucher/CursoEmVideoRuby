require 'rails_helper'
require 'spec_helper'
RSpec.describe "Customers", type: :request do
  context "Test for logged customers" do
    describe "GET /customers" do

      it 'JSON Schema' do
        customer = create(:customer_male_default)
        get '/customers/1.json'
        expect(response).to match_response_schema("customer")
      end

      it "works! 200" do
        get customers_path
        expect(response).to have_http_status(200)
      end
      
      it "index - JSON 200" do
        customer = FactoryBot.create(:customer_male_default)
        get "/customers.json"
        puts response.body
        expect(response).to have_http_status(200)
        expect(response.body).to include_json([
          id: 1,
          description: (be_kind_of String),
          email: (be_kind_of String)
        ])
      end
  
      it "show - JSON 200" do
        customer = FactoryBot.create(:customer_male_default)
        get "/customers/1.json"
        puts response.body
        expect(response).to have_http_status(200)
        expect(response.body).to include_json(
          id: /\d/,
          description: (be_kind_of String),
          email: (be_kind_of String)
        )
      end

      it "show PURO DO PURO - JSON 200" do
        customer = FactoryBot.create(:customer_male_default)
        get "/customers/1.json"
        response_body = JSON.parse(response.body)
        expect(response_body.fetch("id")).to eq(1)
        expect(response_body.fetch("description")).to be_kind_of(String)
        expect(response_body.fetch("email")).to be_kind_of(String)
      end

      it "create - JSON" do
        member = create(:member)
        login_as(member, scope: :member)
  
        headers = {"ACCEPT" => "application/json"}
  
        customer_params = attributes_for(:customer)
        p customer_params[:description]
        post "/customers.json", params: {customer: customer_params}, headers: headers
        
        expect(response.body).to include_json(
          id: /\d/,
          description: customer_params[:description],
          email: customer_params[:email]
        ) 
      end
  
       it "update - JSON" do
        customer = create(:customer_male_default)
        member = create(:member)
        
        login_as(member, scope: :member)
        
        headers = {"ACCEPT" => "application/json"}
        
        customer = Customer.first

        customer.description += "- Atualizado"

        puts customer

        patch "/customers/#{customer.id}.json", params: 
        {customer: customer.attributes}, headers: headers

        expect(response.body).to include_json(
          id: /\d/,
          description: be_kind_of(String),
          email: be_kind_of(String) 
          #customer_params.email
        ) 
      end
      it "destroy - JSON" do
        customer = create(:customer_male_default)
        member = create(:member)
        
        login_as(member, scope: :member)
        
        headers = {"ACCEPT" => "application/json"}
        customer = Customer.first

        expect{delete "/customers/#{customer.id}.json",
         headers: headers}.to change(Customer, :count).by(-1)
         expect(response).to have_http_status(204)
      end
    end
  end
end
