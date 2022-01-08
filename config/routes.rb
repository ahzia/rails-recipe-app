Rails.application.routes.draw do
  devise_for :users
  get 'foods/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'foods#index'

  resources :foods
  resources :recipes do
    resources :recipe_foods, only: %i[create destroy]
  end
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]
end
