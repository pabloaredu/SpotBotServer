Rails.application.routes.draw do


  post 'user_token' => 'user_token#create'


  resources :spots, only: [:index, :update] do
    resources :reservations, only: [:create, :update]
  end

  resources :faqs, only: [:index]

  resources :my_account, only: [:index]

  get 'main/index'

  root 'main#index'


# This route sends requests to our naked url to the *cool* action in the *gif* controller.
  mount Knock::Engine => "/knock"

    # These routes will be for signup. The first renders a form in the browse, the second will
    # receive the form and create a user in our database using the data given to us by the user.
    # get '/signup' => 'users#new'
  post '/users' => 'users#create'

    # get '/login' => 'sessions#new'
    # post '/login' => 'sessions#create'
    # get '/logout' => 'sessions#destroy'

    # get '/spots?accessi' => 'spots#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
