Rails.application.routes.draw do


  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "movies#index", as: :signed_in_root
  end



  resources :movies

  get 'start', to: 'welcome#index'
  get 'contact', to: 'welcome#contact'
  get 'about', to: 'welcome#about'
  get 'list', to: 'movies#list'

  root 'welcome#index'

end
