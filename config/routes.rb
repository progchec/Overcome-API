Rails.application.routes.draw do
  resources :contacts do
    resources :runnings
    resources :publisheds
    resources :completeds
    resources :faileds
  end

  get 'contacts/find_by_login/:login' => 'contacts#find_by_login'
end
