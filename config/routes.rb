Rails.application.routes.draw do
  resources :books
  devise_for :users
  root to: 'books#index'
  post 'books/:id/unbook', to: 'books#unbook', as: 'unbook' 
  post 'books/:id/book', to: 'books#book', as: 'book_book'
  post 'books/:id/pay', to: 'books#pay', as: 'pay_book'
  get 'home/:id/profile', to: 'home#profile', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
