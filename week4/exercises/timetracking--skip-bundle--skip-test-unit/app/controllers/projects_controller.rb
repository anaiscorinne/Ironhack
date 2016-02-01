class ProjectsController < ApplicationController
  def index
  	@projects = Project.last_created_projects(10)
  	# puts @projects
  	render 'index'
  end
end
