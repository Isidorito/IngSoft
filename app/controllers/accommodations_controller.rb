class AccommodationsController < ApplicationController

	def new

		@Hospedaje = Accommodation.new
		
	end



	def search
		  
 		@Hospedaje = Accommodation.index(params[:search])	
		

	end

	def index
		@Hospedaje = Accommodation.index(params[:search])
	end	

	def user
		@Hospedaje = Accommodation.where(:user_id => current_user.id).order("id ASC") 
		@MisPreguntas = Question.where(:accommodation_owner => current_user.id).order("id ASC")
	end	

	def create
		
		Accommodation.create(params.require(:accommodation).permit( :nombre, :accommodation_type_id, :foto, :cantidad_personas, :activo, :descripcion, :user_id ))
	end	

	def update

		@h = Accommodation.find(params.require(:id))

			if @h.activo == true

				@h.update(:activo => 'false')
			else
			
				@h.update(:activo => 'true')
			end

		redirect_to :back

	end

	def more

		@Hospedaje = Accommodation.where(:id => params[:format])
		@Pregunta = Question.new
		
	end
end

