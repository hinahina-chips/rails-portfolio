Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    resources :data, only: [:index, :show]
  end
  
  resources :career, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :skill, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :personal, only: [:new, :create, :index, :edit, :update]
  get 'projects/logo' => 'projects#logo', as: 'logo'
  get 'projects/round' => 'projects#round', as: 'round'
  get 'projects/pictures' => 'projects#pictures', as: 'pictures'
end
