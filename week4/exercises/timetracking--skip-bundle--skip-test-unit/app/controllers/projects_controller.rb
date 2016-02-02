class ProjectsController < ApplicationController
  def index
  	@projects = Project.last_created_projects(10)
  	# puts @projects
  	render 'index'
  end
  def show
  	# id = params[:id]
  	@project = Project.find_by(id: params[:id])
  	if @project
  		render 'show'
  	else
  		render 'project_not_found'
  	end
  # rescue ActiveRecord::RecordNotFound
  # 	render 'no_projects_found' no projects found rescue error page
  end
end
