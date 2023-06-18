Rails.application.routes.draw do

  devise_for :users
  resources :books
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"

  resources :users, only: [:show, :edit,:index,:update]
  resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
