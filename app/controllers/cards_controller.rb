class CardsController < ApplicationController

	def getpremium

		@tarjeta = Card.new
		
	end

	def create
		
		@tarjeta = Card.new(params.require(:card).permit( :nombre, :apellido, :direccion, :cp, :ciudad, :pais, :email, :tipo, :numero, :vencimiento, :codigo ))
		
		if @tarjeta.save

			@u = User.where(id: current_user.id)

			@u.update(:vip => 'true')
			
			redirect_to user_path

		else
		
			render :getpremium

		end	

	end	


end
