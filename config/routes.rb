Rails.application.routes.draw do
  root 'notices#index'
  resources :users
  resources :notice_items

  resources :notices do
    resources :posts
    collection do
      post :notice_update
    end
  end

  resources :censors do
    collection do
      post :censor_success
    end
  end


  resources :letters
  resources :letter_texts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
