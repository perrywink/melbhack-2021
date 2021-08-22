require 'sidekiq/web'

Rails.application.routes.draw do
  
  resources :medicines
  resources :patients do
    resources :logs do
      resources :doses, shallow: true
    end
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
