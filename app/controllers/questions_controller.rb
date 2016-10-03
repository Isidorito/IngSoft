class QuestionsController < ApplicationController


	def new

		@Pregunta = Question.new
		
	end

	def create

		Question.create(params.require(:question).permit( :question, :accommodation_id, :asker, :accommodation_owner))
		
	end

	def show

		@Pregunta = Question.where(:accommodation_owner => current_user.id).order("id ASC") 
		
	end

	def update
		@q = Question.find(params[:id])
		@q.update(params.require(:answer))
	end

end
