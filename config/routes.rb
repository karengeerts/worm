Rails.application.routes.draw do

	# get '/', to: 'pages#home'


  resources :votes
  resources :presentations
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
