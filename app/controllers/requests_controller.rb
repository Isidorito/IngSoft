class RequestsController < ApplicationController

	def create
	
		Request.create(params.require(:request).permit(:accommodation_id, :accommodation_owner, :requester, :initial_date, :final_date))

		redirect_to :back
	
	end

	def show

		@todas = Request.where(:accommodation_id => params[:id])


		@Solicitud = @todas.where(:ok => false).order("id ASC")
		#(:accommodation_owner => current_user.id).where(:ok => false).order("id ASC") 
		

		@Aceptadas = @todas.where(:ok => true).order("id ASC")
		#(:accommodation_owner => current_user.id).where(:ok => true).order("id ASC")
		
	end

	def destroy

		@f = Request.find(params[:id])

		@f.destroy

		redirect_to :back

	end

	def edit

		@f = Request.where(:id => params[:id])	
		

		@f.update(:ok => 'true')
		########################
		#Elimina Otras solicitudes existentes que caigan en el mismo periodo que el de la aceptada

		@f.each do |f|

			r1 = Request.where('initial_date >= ? AND initial_date <= ? AND ok = false', f.initial_date, f.final_date)

			r2 = Request.where('final_date >= ? AND final_date <= ? AND ok = false', f.initial_date, f.final_date)
			 
			r1.destroy_all
			r2.destroy_all

		end
		########################
		redirect_to :back

	end	
end
