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
		@article = Article.new(params.require(:article).permit(:titre, :description, :prix))
		@article.save

		redirect_to @article
	end

	def edit
	end

	def destroy
	end
end
