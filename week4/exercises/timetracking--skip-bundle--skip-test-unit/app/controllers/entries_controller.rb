class EntriesController < ApplicationController
	def index
		# @entries = Entry.where(project_id: params[:id])
		@project = Project.find_by(id: params[:project_id])
		unless @project
			render 'no_project'
		end
	end
end
