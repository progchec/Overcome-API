Rails.application.routes.draw do
  resources :contacts do
    resources :runnings
    resources :publisheds
    resources :completeds
    resources :faileds
  end
end
