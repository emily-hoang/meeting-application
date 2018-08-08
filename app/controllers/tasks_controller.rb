class TasksController < ApplicationController

	#hhtp_basic_authenticate_with name:"dhh", password:"secret"
	#only :destroy

	def create
		@meeting = Meeting.find(patams[:id])
		@task = @meeting.tasks.create(task_params)
		redirect_to meeting_path(@meeting)
	end

	def destroy
		@meeting = Meeting.find(params[:meeting_id])
		@task = @meeting.tasks.find(params[:id])
		@task.destroy
		redirect_to meeting_path(@meeting)
	end

	private
		def task_params
			params.require(:task).permit(:tasker, :body)
		end
end
