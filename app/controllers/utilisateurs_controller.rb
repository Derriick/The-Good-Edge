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
	end
end