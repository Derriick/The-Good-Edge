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
		@article = Article.new(params.require(:article).permit(:titre, :prix, :description))
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
		if current_utilisateur.id != @article.utilisateur_id
			redirect_to(articles_path, alert: "Vous n'êtes pas autorisés à modifier cet article")
		end
	end

	def update
		@article = Article.find(params[:id])
		if @article.update_attributes(params.require(:article).permit(:titre, :prix, :description, :utilisateur_id))
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy
		# @article = Article.find(params[:id])
		# a faire dans show ? 
	end
end
