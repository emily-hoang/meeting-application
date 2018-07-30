Rails.application.routes.draw do
  get 'welcome/index'

  resources :meetings
 root 'welcome#index'
end
