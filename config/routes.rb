Rails.application.routes.draw do
	resources :utilisateurs do
	  collection do
	  	post :sign_in
	  end
	end
	resources :articles

	# get 'articles/show'

	# get 'articles/index'

	# get 'articles/new'

	# get 'articles/edit'

	# get 'articles/destroy'

	# get 'utilisateurs/show'

	# get 'utilisateurs/new'

	# get 'utilisateurs/edit'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
