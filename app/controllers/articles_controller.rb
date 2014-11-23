class ArticlesController < ApplicationController
	# respond_to :html, :json

	def index
		@articles = Article.all
		respond_to do |format|
			format.html
			format.json { render json: @articles }
		end
	end
end
