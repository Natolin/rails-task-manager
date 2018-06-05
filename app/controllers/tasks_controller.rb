class TasksController < ApplicationController
  before_action :set, only: [:show, :edit, :update, :destroy]
  def list
    @tasks = Task.all
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to '/list'
  end

  def new
    @task = Task.new(params[:id])
  end


  def edit
  end

  def update
    @task.update(task_params)
    redirect_to '/list'
  end

  def destroy
    @task.destroy
    redirect_to '/list'
  end

  private

  def set
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

