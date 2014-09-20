Tagorion::Application.routes.draw do

  resources :names do
    resources :tags
  end

  root 'welcome#index'
end