Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :widgets, only: %i[index]

  resources :questions, only: %i[index show] do
    resources :user_answers
  end

  root to: "pages#home"
end
