Rails.application.routes.draw do
  namespace :players do
    resources :players
  end
  namespace :users do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
