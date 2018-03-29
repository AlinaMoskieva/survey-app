Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :questions, only: %i[index show]

  root to: "pages#home"
end
