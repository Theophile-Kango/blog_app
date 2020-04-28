Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/about'
  get 'posts/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  resources :tags
  resources :authors

end
