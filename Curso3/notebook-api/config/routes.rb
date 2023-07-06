Rails.application.routes.draw do
resources :kinds
resources :contacts
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

