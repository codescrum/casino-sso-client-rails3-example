Rails3MongoidDevise::Application.routes.draw do

  devise_for :users, :controllers => { sessions: 'devise/cas_sessions' }
  devise_for :users do
    #redirect to dashboard after edit details
    # get "/", :to => "devise/sessions#new"
  end

  # authenticated :user do
  #   root :to => 'home#index'
  # end
  root :to => "home#index"
  # devise_for :users
  resources :users
end
