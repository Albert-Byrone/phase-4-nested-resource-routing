Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :reviews, only: [:show, :index]
  end
  resources :reviews, only: [:show, :index, :create]


  # get '/dog_houses/:dog_house_id/reviews' => 'dog_houses#reviews_index'
  # get '/dog_houses/:dog_houses_id/reviews/:review_id' => 'dog_houses#review'

end
