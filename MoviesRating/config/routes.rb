Rails.application.routes.draw do

  resources :movies

  get 'start', to: 'welcome#index'
  get 'contact', to: 'welcome#contact'
  get 'about', to: 'welcome#about'

  root 'welcome#index'

end
