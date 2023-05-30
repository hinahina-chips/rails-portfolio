Rails.application.routes.draw do
  namespace :api do
    resources :data, only: [:index, :show]
  end
  # エンドポイントの追加
  resources :career, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :skill, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :personal, only: [:new, :create, :index, :show, :destroy]
  resources :todos

end
