class RequestsController < ApplicationController

	def create
	
		Request.create(params.require(:request).permit(:accommodation_id, :accommodation_owner, :requester, :initial_date, :final_date))
	
	end

	def show

		@Solicitud = Request.where(:accommodation_owner => current_user.id).where(:ok => false).order("id ASC") 

		@Aceptadas = Request.where(:accommodation_owner => current_user.id).where(:ok => true).order("id ASC")
		
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

			r1 = Request.where('initial_date >= ? AND initial_date <= ?', params[:initial_date], params[:final_date])
			r2 = Request.where('final_date >= ? AND final_date <= ?', params[:initial_date], params[:final_date])

			r1.destroy.all
			r2.destroy.all




		########################
		render :show

	end	
end
