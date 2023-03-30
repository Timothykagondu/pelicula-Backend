Rails.application.routes.draw do
  resources :reviews
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# user routes
 post '/users', to: 'users#signup'
 post '/users/login', to: 'users#login'
 get '/user/login/check', to: 'users#confirm_login_status'
 delete '/users/logout', to: 'users#logout'

end
# rails generate model Review user:references movie:references rating:integer comment:text
# rails db:migrate
# rails generate resource Review user:references movie:references rating:integer comment:text
