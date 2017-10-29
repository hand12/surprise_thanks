Rails.application.routes.draw do
	root to: 'tops#index'
  resources :surprise_thanks
end
