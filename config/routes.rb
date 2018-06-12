Rails.application.routes.draw do
  


  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
   devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

resources :posts
delete 'posts/:id' => 'posts#destroy' , as: 'destroy_it'
root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
