Rails.application.routes.draw do

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#get 'pages/home', to: 'pages#home'

root 'pages#home'
get 'about', to: 'pages#about'

resources :articles

#signup é a rota (/signup). users é o controller e new é a action
get 'signup', to: 'users#new'
resources :users, except: [:new]

#login
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

end
