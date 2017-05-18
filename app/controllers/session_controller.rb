class SessionController < ApplicationController
	def create
		session[:current_user_id] = @utilisateur.id
end
