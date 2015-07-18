Rails.application.routes.draw do

  get 'sessions/new'

  devise_for :users
   resources :posts do
   	resources :comments
   end


   root 'posts#index'

   get '/about', to: 'pages#about'

end
