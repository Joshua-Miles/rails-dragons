Rails.application.routes.draw do
  resources :users, :abilities, :dragons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
