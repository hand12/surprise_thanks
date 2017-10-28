Rails.application.routes.draw do
  get '/top', to: 'tops#index'
  resources :surprise_thanks
end
