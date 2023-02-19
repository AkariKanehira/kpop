Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'idols#index'

  resources :idols do
    collection do
      get :SM
      get :YG
      get :JYP
    end
  end

end
