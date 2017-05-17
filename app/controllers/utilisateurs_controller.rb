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
	end
end
