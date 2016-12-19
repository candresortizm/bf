Rails.application.routes.draw do



  get 'pet_wall_users/index'

  get 'pet_wall_users/show'

  get 'static_pages/welcome'

  devise_for :adopters, controllers: {
          sessions: 'adopters/sessions',
          passwords: 'adopters/passwords',
          registrations: 'adopters/registrations'
  }
  devise_for :fundations, controllers: {
          sessions: 'fundations/sessions',
          passwords: 'fundations/passwords',
          registrations: 'fundations/registrations'
  }
  get "fundations" => "static_pages#fundations"
  root to: 'static_pages#welcome'

  resources :admin_forms
  resources :pet_walls

  get "pet_wall_users" => "pet_wall_users#index"

  get "new_quertionary" => "adopters/adopter#new_quertionary"
  post "create_quertionary" => "adopters/adopter#create_quertionary"
end
