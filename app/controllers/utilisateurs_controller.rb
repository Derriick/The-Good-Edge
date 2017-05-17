class UtilisateursController < ApplicationController
	def show
		@utilisateur = Utilisateur.find(params[:id])
	end

	def new
		@utilisateur = Utilisateur.new
	end

	def create
		@utilisateur = Utilisateur.create(params.require(:utilisateur).permit(:nom, :prenom, :promotion, :email, :telephone))

		redirect_to @utilisateur
	end

	def edit
		if session[:utilisateur_id] != @utilisateur.id
			redirect_to(utilisateurs_path, notice: "Vous n'êtes pas autorisés à modifier ce profil")
		end
	end
end