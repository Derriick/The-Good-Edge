class UtilisateursController < ApplicationController
	def show
		@utilisateur = Utilisateur.find(params[:id])
	end

	def new
		@utilisateur = Utilisateur.new
	end

	def create
		@utilisateur = Utilisateur.create(params.require(:utilisateur).permit(:nom, :prenom, :promotion, :email, :telephone))
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
		if @utilisateur.update_attributes(params.require(:utilisateur).permit(:nom, :prenom, :promotion, :email, :telephone))
			redirect_to @utilisateur
		else
			render :edit
		end
	end
end