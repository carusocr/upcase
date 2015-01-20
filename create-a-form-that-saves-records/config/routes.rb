Rails.application.routes.draw do
  resources :guestbook_entries
  root to: "pages#index"
end
