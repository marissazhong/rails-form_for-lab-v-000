class StudentController < ApplicationController

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new
	  @student.title = params[:title]
	  @student.room_number = params[:room_number]
	  @student.save
	  redirect_to student_path(@student)
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
	  @student = Student.find(params[:id])
		@student.update(params.require(:student))
    redirect_to student_path(@student)
	end
end
