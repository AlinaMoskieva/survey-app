Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :questions, only: %i[index show]
  resources :widgets, only: %i[index]

  root to: "pages#home"
end
