class MeetingsController < ApplicationController

	def new

	end

	def create
		@meeting = Meeting.new(params[:meeting])
		@meeting.save

		redirect to @meeting
	end
end
