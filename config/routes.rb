Rails.application.routes.draw do
	# devise_for :users
	devise_for :users, controllers: {
		registrations: 'users/registrations',
		sessions: 'users/sessions'
	}

	root to: 'tops#index'
	resources :surprise_thanks do
		resources :comments
	end
end
