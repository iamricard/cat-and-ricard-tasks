class TasksController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new task_params
    if @task.save
      redirect_to action: 'index', controller: 'projects'
    else
      render 'new'
    end
  end

  private
  def task_params
    params.require(:task).permit(:project_id, :name, :status)
  end
end
