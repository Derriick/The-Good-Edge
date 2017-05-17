class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(params.require(:article).permit(:titre, :description, :prix))

		redirect_to @article
	end

	def edit
		if session[:utilisateur_id] != @article.utilisateur.id
			redirect_to(utilisateurs_path, notice: "Vous n'êtes pas autorisés à modifier ce profil")
		end
	end

	def destroy
	end
end
