class TeachersController < ApplicationController

	def index
		@teachers = Teacher.all
		@teacher_one = Teacher.first(:offset => rand(Teacher.count))
		@teacher_two = Teacher.first(:offset => rand(Teacher.count))
		@teacher_three = Teacher.first(:offset => rand(Teacher.count))
	end	

	def show
		@teacher = Teacher.find(params[:id])
	end

	def new
		@teacher = Teacher.new
	end

	def create
	
	end

private 

	 
end
