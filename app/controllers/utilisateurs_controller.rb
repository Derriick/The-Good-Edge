class UtilisateursController < ApplicationController
	# protect_from_forgery with: :exception
	# before_action :configure_permitted_parameters, if: :devise_controller?
	# before_action :authenticate_user!, except: [:home, :about, :contact]

	def index
		redirect_to new_utilisateur_path
	end

	def show
		if utilisateur_signed_in?
			@utilisateur = Utilisateur.find(params[:id])
		else
			redirect_to "/articles"
		end
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

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nom, :prenom])
		devise_parameter_sanitizer.permit(:account_update, keys: [:nom, :prenom])
	end

	def after_sign_in_path_for(resource)
		articles_path
	end

	# Si il y a un destroy, penser a faire : Article.where(utilisateur_id: params[:id]).destroy_all
	# Actuellement le destrooy est fait par devise mais ça plante mdr
end