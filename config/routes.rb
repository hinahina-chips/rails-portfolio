Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    resources :data, only: [:index, :show]
  end
  # エンドポイントの追加
  resources :career, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :skill, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :personal, only: [:new, :create, :index, :edit, :update]
  resources :todos
  get 'projects/logo' => 'projects#logo', as: 'logo'
  get 'projects/round' => 'projects#round', as: 'round'
  get 'projects/pictures' => 'projects#pictures', as: 'pictures'
end
