Rails.application.routes.draw do
  root 'notices#index'
  resources :notices do
    resources :posts
    resources :censors
  end
  resources :notice_items
  resources :users

  resources :letters
  resources :letter_texts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
