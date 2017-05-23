class ArticlesController < ApplicationController

	def index
		@articles = Article.where(archive: false)
	end

	def mesarticles
		@articles = Article.where(utilisateur_id: current_utilisateur)
	end

	def show
		if utilisateur_signed_in?
			@article = Article.find(params[:id])
		else
			redirect_to(articles_path, alert: "Vous devez être connecté pour consulter les annonces")
		end
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params.require(:article).permit(:titre, :prix, :description, :archive))
		@article.utilisateur = current_utilisateur
		if @article.save
			params[:article][:images].each do |i|
				@article.images.create file: i
			end
		end
		# params.require(:article)permit(:images).each do |i|
		# 	article.images.create file: i
		# end

		redirect_to @article
	end

	def edit
		@article = Article.find(params[:id])
		if utilisateur_signed_in?
			if current_utilisateur.id != @article.utilisateur_id
				redirect_to(articles_path, alert: "Vous n'êtes pas autorisé à modifier cet article")
			end
		else
			redirect_to(articles_path, alert: "Vous devez être connecté pour modifier un article")
		end
	end

	def update
		@article = Article.find(params[:id])
		if @article.update_attributes(params.require(:article).permit(:titre, :prix, :description, :archive, :utilisateur_id))
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])
		if utilisateur_signed_in?
			if current_utilisateur.id != @article.utilisateur_id
				redirect_to(articles_path, alert: "Vous n'êtes pas autorisé à supprimer cet article")
			else
				@article.images.each do |image|
					image.destroy
				end
				@article.destroy

				redirect_to articles_path
			end
		else
			redirect_to(articles_path, alert: "Vous devez être connecté pour supprimer un article")
		end
	end
end
