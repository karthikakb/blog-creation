Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
resources :blogs do
 collection do
  	get 'list'
  end
end
resources :comments
resources :blogs do
  resources :likes
end
root'blogs#index'
end
