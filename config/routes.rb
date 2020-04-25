Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :restaurants, except: %i[edit update]
  resources :bars, except: %i[edit update]
end
