class ProjectsController < ApplicationController
  before_action :authenticate_user

  def index
    @projects = current_user.projects
    render json: @projects
  end

  def create
    params.require(:project).require(:client_id)
    @project = Project.new(project_params.merge(created_by: current_user))
    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:client_id, :title)
  end
end
