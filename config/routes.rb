Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "entries#index"
  resources :member_entries
  get '/entry' => "entries#index"
  
end
