Rails.application.routes.draw do

  resources :movies

  get 'welcome/index'

  root 'welcome#index'

end
