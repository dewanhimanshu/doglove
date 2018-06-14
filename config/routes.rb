Rails.application.routes.draw do
  


  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
   devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

resources :posts do
	member do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
  end
 end
delete 'posts/:id' => 'posts#destroy' , as: 'destroy_it'

root 'posts#index'

get 'users/dashbord'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
