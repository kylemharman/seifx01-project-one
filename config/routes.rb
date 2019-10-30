Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  
  resources :posts do
    member do
       get "like", to: "posts#upvote"
    end
    resources :comments
  end
  
end
