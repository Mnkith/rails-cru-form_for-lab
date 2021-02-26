Rails.application.routes.draw do
  resources :genres, :songs, :artists, except: :destroy
end
