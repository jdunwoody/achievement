class MastersController < ApplicationController
  def index
    @skill_trees = SkillTree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skill_trees }
    end
  end

  #def show
    #@skill_trees = SkillTrees.find(params[:id])

    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @master }
    #end
  #end

  ## GET /masters/new
  ## GET /masters/new.json
  #def new
    #@master = Master.new

    #respond_to do |format|
      #format.html # new.html.erb
      #format.json { render json: @master }
    #end
  #end

  ## GET /masters/1/edit
  #def edit
    #@master = Master.find(params[:id])
  #end

  ## POST /masters
  ## POST /masters.json
  #def create
    #@master = Master.new(params[:master])

    #respond_to do |format|
      #if @master.save
        #format.html { redirect_to @master, notice: 'Master was successfully created.' }
        #format.json { render json: @master, status: :created, location: @master }
      #else
        #format.html { render action: "new" }
        #format.json { render json: @master.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  ## PUT /masters/1
  ## PUT /masters/1.json
  #def update
    #@master = Master.find(params[:id])

    #respond_to do |format|
      #if @master.update_attributes(params[:master])
        #format.html { redirect_to @master, notice: 'Master was successfully updated.' }
        #format.json { head :ok }
      #else
        #format.html { render action: "edit" }
        #format.json { render json: @master.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  ## DELETE /masters/1
  ## DELETE /masters/1.json
  #def destroy
    #@master = Master.find(params[:id])
    #@master.destroy

    #respond_to do |format|
      #format.html { redirect_to masters_url }
      #format.json { head :ok }
    #end
  #end
end
