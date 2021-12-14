Rails.application.routes.draw do
  root to: 'books#index'
  resources :book_tags,:only=>[:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
