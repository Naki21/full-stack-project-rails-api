Rails.application.routes.draw do
  resources :battles, except: [:new, :edit]
  resources :barracks, except: [:new, :edit]
  # fighters routes
  resources :fighters, except: [:new, :edit]
  get '/fighter' => 'fighters#random'

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
