class RecordsController < ApplicationController
	def index
		@records = Record.all
	end
	def show
		p params
		@record = Record.find(params[:id]) # TODO: handle error
	end
	def new
		@record = Record.new
	end
	def create
		Record.create(record_params)
		redirect_to('/records')
	end
	def record_params
		params.require(:record).permit(:title, :artitist, :year, :cover_art, :song_count)
	end
end
