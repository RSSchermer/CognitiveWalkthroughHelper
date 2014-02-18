class TasksController < ApplicationController
  before_filter :authenticate_user!
  
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_walkthrough, only: [:index, :new, :create]

  # GET /tasks
  def index
    @tasks = @walkthrough.tasks
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params.merge({:walkthrough_id => @walkthrough.id}))

    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to walkthrough_tasks_url(@task.walkthrough), notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end
    
    def set_walkthrough
      @walkthrough = Walkthrough.find(params[:walkthrough_id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:description)
    end
end
