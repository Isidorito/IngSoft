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

end

