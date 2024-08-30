Rails.application.routes.draw do
    resources :songs
    root 'songs#index' # Set the root route to the index action of songs
  end
  