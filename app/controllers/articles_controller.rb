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

		# @zombie = Zombie.create(zombie_params)
		# redirect_to zombie_path(@zombie)

	end

	def edit
	end

	def destroy
	end
end
