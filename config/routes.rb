Rails.application.routes.draw do
  get 'welcome/index'

  resources :meetings do
  	resources :tasks
  end

 root 'welcome#index'
end


