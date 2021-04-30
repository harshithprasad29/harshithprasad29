Rails.application.routes.draw do
  resources :products
	root "products#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # devise_scope :user do
  #   get 'users/sign_in', to: 'users/sessions#new', as: :new_admin_session
  #   get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_admin_session
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
