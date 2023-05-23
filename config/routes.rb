Rails.application.routes.draw do
  resources :career, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :skill, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :personal, only: [:new, :create, :index, :show, :destroy]
  resources :todos

end
