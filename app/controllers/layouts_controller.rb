class LayoutsController < ApplicationController

	def index

		@Hospedaje = Accommodation.index(params[:search]).last(3)

	end	

end
