Rails.application.routes.draw do
  root 'notices#index'
  resources :users
  resources :notice_items

  resources :notices do
    resources :posts
    collection do
      post :notice_update
      post :post_update
    end
  end

  resources :censors do
    collection do
      post :censor_success
    end
  end


  resources :letters
  resources :letter_texts do
    collection do
      get :rec_api
      get :send_api
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
