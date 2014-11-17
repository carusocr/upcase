Rails.application.routes.draw do
  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end
end
