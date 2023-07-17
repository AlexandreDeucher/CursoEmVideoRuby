require 'rails_helper'

describe ContactsController, type: :controller do
    
    class Hash
        def json(parts)
            ary = parts.split(">")
            ary.reduce(self) do |memo, key|
                memo.fetch(key.to_s.strip) if memo
            end
        end
    end

    # it 'request index and return 406 NOT ACCEPTABLE' do
    #     get :index
    #     expect(response).to have_http_status(:not_acceptable)
    # end
    it 'request index and return 200 OK' do
        request.accept = 'application/vnd.api+json'
        get :index
        expect(response).to have_http_status(:ok)
    end

    it 'GET /contacts/:id' do
        contact = Contact.first
        request.accept = 'application/vnd.api+json'

        get :show, params: {id: contact.id}

        response_body = JSON.parse(response.body)
        
        response_body.json('data > id')

        expect(response_body.json('data > id')).to eq(contact.id.to_s)
        expect(response_body.json('data > type')).to eq('contacts')
        expect(response_body.json('data > attributes > name')).to eq(contact.name)

    end
end
