class UtilisateursController < ApplicationController
	def show
		@utilisateur = Utilisateur.find(params[:id])
	end

	def new
		@utilisateur = Utilisateur.new(params.require(:nutilisateur).permit(:nom, :prenom, :promotion))
		@utilisateur.save

		redirect_to @utilisateur
	end

	def edit
		if session[:utilisateur_id] != @utilisateur.id
			redirect_to(utilisateurs_path, notice: "Vous n'êtes pas autorisés à modifier ce profil")
		end
	end
end
