Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'registrations'
  }


  resources :users, except: [:index, :create, :new, :show, :update, :edit, :destroy] do
     resources :profiles

    end


  resources :life_goals, only: [:index, :show] do
    resources :challenges, only: [:index, :show]
  end



  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
