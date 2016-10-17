class RequestsController < ApplicationController

	def create
	
		Request.create(params.permit(:accommodation_id, :accommodation_owner, :requester, :initial_date, :final_date))
	
	end

	def show

		@Solicitud = Request.where(:accommodation_owner => current_user.id).order("id ASC") 
		
	end
end
