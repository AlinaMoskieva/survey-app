Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :widgets, only: %i[index]
  resources :feedbacks

  resources :questions, only: %i[index show] do
    resources :user_answers
  end

  resources :user_answers, only: :index

  root to: "pages#home"
end
