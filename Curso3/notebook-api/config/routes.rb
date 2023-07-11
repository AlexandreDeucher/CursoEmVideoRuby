Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

#resources :auths, only: [:create]
resources :kinds
  #scope module: 'v1' do
  api_version(:module => "v1", :parameter => {:name => "version", :value => "1"}) do
    resources :contacts do #, :constraints => lambda {|request| request.params[:version] == "1"} do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'
      
      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show, :update, :create, :destroy], path: 'relationships/address'
      end
  end
  api_version(:module => "v2", :parameter => {:name => "version", :value => "2"}) do
  #scope module: 'v2' do
    resources :contacts do #, :constraints => lambda {|request| request.params[:version] == "1"} do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'
      
      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show, :update, :create, :destroy], path: 'relationships/address'
      end
  end
end

#----------------Padrão do que o vitor mostrou-----------------
#  resources :contacts do
#member do
#  patch :approve
#end



#collection do 
#  get :routes
#end
#  end
#end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

