class UtilisateursController < ApplicationController
	def index
		redirect_to new_utilisateur_path
	end

	def show
		@utilisateur = Utilisateur.find(params[:id])
	end

	def new
		@utilisateur = Utilisateur.new
	end

	def create
		@utilisateur = Utilisateur.create(params.require(:utilisateur).permit(:nom, :prenom, :promotion, :email, :telephone, :avatar))
		session[:current_user_id] = @utilisateur.id

		redirect_to @utilisateur
	end

	def edit
		@utilisateur = Utilisateur.find_by_id(session[:current_user_id])
		if @utilisateur != Utilisateur.find(params[:id])
			redirect_to(articles_path, notice: "Vous n'êtes pas autorisés à modifier ce profil")
		end
	end

	def update
		@utilisateur = Utilisateur.find(params[:id])
		if @utilisateur.update_attributes(params.require(:utilisateur).permit(:nom, :prenom, :promotion, :email, :telephone, :avatar))
			redirect_to @utilisateur
		else
			render :edit
		end
	end

	def sign_in
		@utilisateur = Utilisateur.where(params.require(:utilisateur).permit(:email)).first
		session[:current_user_id] = @utilisateur.id

		redirect_to @utilisateur
	end
end