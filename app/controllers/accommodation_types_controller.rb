class AccommodationTypesController < ApplicationController

	def create 
		AccommodationType.create(params.require(:accommodation_type).permit(:nombre,:activo))

	end

	def edit
		AccommodationType.edit(params.require(:accommodation_type).permit(:nombre,:activo))
		
	end

	def destroy
		AccommodationType.delete(params.require(:accommodation_type).permit(:nombre,:activo))
	end


	def update
		
		@tipoHospedaje = AccommodationType.new		

	end

	def delete
		@tipoHospedaje = AccommodationType.new			

	end	

	def new
		@tipoHospedaje = AccommodationType.new
	end

	def admin
		@tipoHospedaje = AccommodationType.all
		
	end
end
