class MeetingsController < ApplicationController

	def index
	end

	def show
		@meeting = Meeting.find(params[:id])
		
	end

	def new
		@meeting = Meeting.new

	end

	def create
		@meeting = Meeting.new(params[:meeting])
		@meeting.save

		redirect to @meeting
	end

	private
		def meetings_params
			params.require(:meeting).permit(:title, :text)
		end
end
