class SchoolClassesController < ApplicationController

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = Post.new
	end

	def create
	  @school_class = Post.new
	  @school_class.title = params[:title]
	  @school_class.room_number = params[:room_number]
	  @school_class.save
	  redirect_to school_class_path(@school_class)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
		@post.update(params.require(:post))
	  redirect_to post_path(@post)
	end
end
