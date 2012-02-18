class TasksController < ApplicationController
  @title = 'Task'

  def index
    @tasks = Task.find_all_by_level_id(params[:level_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  def show
    #debugger
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  def new
    #debugger
    @task = Task.new(:level_id => params[:level_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  def edit
    #debugger
    @task = Task.find(params[:id])
  end

  def create
    #debugger
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :ok }
    end
  end

  def toggle_complete
    @task = Task.find(params[:id])
    @task.toggle_completed!

    #@task.save!
    #render :nothing => true
    #@user = User.find(params[:id])

    respond_to do |format|
      if @task.save! #@user.update_attributes(params[:user])
        format.html { redirect_to(@task, :notice => 'User was successfully updated.') }
        #format.json { render :json => @task.errors.full_messages, :status => :unprocessable_entity }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @task.errors.full_messages, :status => :unprocessable_entity }
      end
    end
  end
end
