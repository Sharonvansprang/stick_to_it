Rails.application.routes.draw do


  mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'registrations'
  }


   resources :users, except: [:index, :create, :new, :show, :update, :edit, :destroy] do
     # resources :profiles
     resources :achievements, except: [:new, :create] do
      resources :progresses, except: [:index, :destroy, :edit, :update]
      resources :messages, except: [:index, :destroy]
    end

    end

  resources :blogs, only: [:index, :show]
  resources :profiles, only: [:show, :new, :edit, :create, :update]



  resources :life_goals, only: [:index, :show]
  # do

  # end

resources :challenges, only: [:index, :show] do
      resources :achievements, only: [:new, :create]
    end



  # get '/blog', to: 'pages#blog'
  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

