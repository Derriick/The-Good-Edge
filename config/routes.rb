Rails.application.routes.draw do

	root "articles#index"

	devise_for :utilisateurs, controllers: {
		registrations: 'utilisateurs/registrations'
	}

	resources :utilisateurs do
		collection do
			post :sign_in
		end
	end

	resources :articles do
		collection do
			get :mesarticles
		end
	end
end
