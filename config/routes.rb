Rails.application.routes.draw do
  resources :teachers
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :grades
  root to: "grades#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
