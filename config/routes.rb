Rails.application.routes.draw do
  devise_for :users #これが先
  resources :users,only: [:show,:index,:edit,:update] do
    get "follow"
    get "follower"
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :relationships, only: [:create, :destroy]
  root 'home#top'
  get 'home/about'
end
