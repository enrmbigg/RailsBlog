class CommentsController < ApplicationController
	def create
		@comment = Article.new(
		 title: params[:comment][:title],
		 body: params[:comment][:body])
		@comment.save
	end
end
