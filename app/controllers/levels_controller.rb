class LevelsController < ApplicationController
  @title = 'Levels'

  def index
    #@levels = Level.all
    @levels = Level.find_all_by_skill_tree_id(params[:skill_tree_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @levels }
    end
  end

  def show
    @level = Level.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @level }
    end
  end

  def new
    @level = Level.new(:skill_tree_id => params[:skill_tree_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @level }
    end
  end

  def edit
    @level = Level.find(params[:id])
  end

  def create
    @level = Level.new(params[:level])

    respond_to do |format|
      if @level.save
        format.html { redirect_to @level, notice: 'Level was successfully created.' }
        format.json { render json: @level, status: :created, location: @level }
      else
        format.html { render action: "new" }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @level = Level.find(params[:id])

    respond_to do |format|
      if @level.update_attributes(params[:level])
        format.html { redirect_to @level, notice: 'Level was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @level = Level.find(params[:id])
    @level.destroy

    respond_to do |format|
      format.html { redirect_to levels_url }
      format.json { head :ok }
    end
  end
end
