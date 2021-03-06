class AccommodationTypesController < ApplicationController

	def create 
		@tipoHospedaje = AccommodationType.new(params.require(:accommodation_type).permit(:nombre,:activo))
		#AccommodationType.create(params.require(:accommodation_type).permit(:nombre,:activo))

		if @tipoHospedaje.save

			redirect_to admin_path

		else
		
			render :new

		end		

	end

	def edit
		@h = AccommodationType.find(params.require(:id))
		
		
	end

	def destroy
		
		#AccommodationType.where(:id => (params.require(:id))).delete(params.require(:accommodation_type).permit(:nombre,:activo))
		#AccommodationType.delete(params.require(:accommodation_type).permit(:nombre,:activo))
		#  @h = AccommodationType.find(params.require(:id))
		#  AccommodationType.destroy(@h.id)
		#  redirect_to :back 

		#@h.accommodations.empty?
		@h = AccommodationType.find(params[:id])
		if !Accommodation.exists?(accommodation_type_id: @h.id )
				  
				  @h.destroy
				#  redirect_to :back
		else

			if @h.activo == true

			#:activo => false
			#AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo => 'false'))
			@h.update(:activo => 'false')
			
			end
			
		end		

		redirect_to :back

	end


	def update
		
		@h = AccommodationType.find(params[:id])
		if @h.update_attributes(params.require(:accommodation_type).permit(:nombre,:activo))

			redirect_to admin_path

		else
		
			render :edit

		end		
		#AccommodationType.where(:id => (params.require(:id))).update(params.require(:accommodation_type).permit(:nombre,:activo))

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
