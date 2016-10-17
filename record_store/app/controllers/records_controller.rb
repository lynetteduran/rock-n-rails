class RecordsController < ApplicationController
	def index
		@records = Record.all
		render :index
	end
	def show
		@record = Record.find(params[:id])
		render :show
	end
end
