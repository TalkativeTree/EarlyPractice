PracticeApp::Application.routes.draw do

  # resource :apple

  get '/photos/:id/explode' => 'photos#explode', as: 'explode_photo'

  resources :photos do

    member do
      get :explode
    end

    collection do
      get :delete_all
    end

    # resources :versions
  end


  # resources :users
  # #When a user loads a URL that looks like X, instantiate the controller Y and call instance method Z
  # get '/' => 'pages#index'
  # post '/login' => 'pages#index'
  # # match '/home' => 'users#index'
end
