class CommentsController < ApplicationController

	def index
		@comments = Comment.find(:all)
	end
	
	def new
		@new_comment = Comment.new
	end

	def create
		comment = Comment.new(params[:comment])
		comment.save
		redirect_to :action=>'index'
	end

end
