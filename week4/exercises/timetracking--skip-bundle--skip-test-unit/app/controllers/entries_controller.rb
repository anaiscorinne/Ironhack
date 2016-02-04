class EntriesController < ApplicationController


	def index
		# @entries = Entry.where(project_id: params[:id])
		@project = Project.find_by(id: params[:project_id])
		unless @project
			render 'no_project'
		end
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
	end

	def edit
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
	end

	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new(entry_params)
			if @entry.save
				redirect_to action: 'index', controller: 'entries', project_id: @project.id
			else
				render 'new'
			end
	end

	def update
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		if @entry.update_attributes(entry_params)
			redirect_to project_entries_path(@project)
		else
			render "edit"
		end
	end

	def destroy
		entry = Entry.find(params[:id])
		entry.destroy
		redirect_to project_entries_path(params[:project_id])
	end

	private #this says only the three arguments are allowed!
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date)
	end
end
