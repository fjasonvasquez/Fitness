Fitness::Application.routes.draw do

  post 'workouts/:id/edit' => 'workouts#update'

resources :workouts
	get 'authentications/new' => 'authentications#new'
	post 'authentications' => 'authentications#create'
	get 'authentications/:id' => 'authentications#show'
	delete 'authentications/:id' => 'authentications#destroy'
	put 'authentications/:id' => 'authentications#update'

  get 'users' => 'users#index'
  get 'users/new' => 'users#new' #add new users
  get 'users/:id' => 'users#show'
  post 'users' => 'users#create'

  delete 'users/:id/edit' => 'users#edit'

  post 'users' => 'users#create'
  delete 'users' => 'users#destroy'
  put 'users/:id' => 'users#update'

  # get 'workouts' => 'workouts#index'
  # get 'workouts/new' => 'workouts#new' #shows form to add new workout day
  # get 'workouts/:id' => 'workouts#show'


  # get 'workouts/:id/edit' => 'workouts#edit'

  # post 'workouts' => 'workouts#create' #creating new workout for admin
  # delete 'workouts/:id' => 'workouts#destroy' #editing for custom workouts
  # get 'workouts/:id/edit' => 'workouts#edit'
  #post 'workouts/:id/edit' => 'workouts#update'

end
