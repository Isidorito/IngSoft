class AccommodationTypesController < ApplicationController

	def create 

		AccommodationType.create(params.require(:accommodation_type).permit(:nombre,:activo))

	end

	def edit
		@h = AccommodationType.find(params.require(:id))
		
		
	end

	def destroy
		@h = AccommodationType.find(params.require(:id))
		AccommodationType.destroy(@h.id)
		#AccommodationType.where(:id => (params.require(:id))).delete(params.require(:accommodation_type).permit(:nombre,:activo))
		#AccommodationType.delete(params.require(:accommodation_type).permit(:nombre,:activo))
		redirect_to :back
	end


	def update
		#@h = AccommodationType.find(:id)
		AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo))

		#AccommodationType.update(params.require(:accommodation_type).permit(:id,:nombre,:activo))		

	end

	def delete
		@tipoHospedaje = AccommodationType.new			

	end	

	def new
		@tipoHospedaje = AccommodationType.new
	end

	def admin
		@tipoHospedaje = AccommodationType.all.order("accommodation_types.id ASC")
		
	end

	def show
		@h = AccommodationType.find(params.require(:id))
		if @h.activo == true

			#:activo => false
			#AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo => 'false'))
			@h.update(:activo => 'false')
		else
			
			#:activo => true
			#AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo => 'true'))
			@h.update(:activo => 'true')
		end

		#AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo))
		redirect_to :back
		
	end
end
