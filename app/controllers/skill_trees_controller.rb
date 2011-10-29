class SkillTreesController < ApplicationController
  @title = 'SkillTrees'
  # GET /skill_trees
  # GET /skill_trees.json
  def index
    @skill_trees = SkillTree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skill_trees }
    end
  end

  # GET /skill_trees/1
  # GET /skill_trees/1.json
  def show
    @skill_tree = SkillTree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill_tree }
    end
  end

  # GET /skill_trees/new
  # GET /skill_trees/new.json
  def new
    @skill_tree = SkillTree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill_tree }
    end
  end

  # GET /skill_trees/1/edit
  def edit
    @skill_tree = SkillTree.find(params[:id])
  end

  # POST /skill_trees
  # POST /skill_trees.json
  def create
    @skill_tree = SkillTree.new(params[:skill_tree])

    respond_to do |format|
      if @skill_tree.save
        format.html { redirect_to @skill_tree, notice: 'SkillTree was successfully created.' }
        format.json { render json: @skill_tree, status: :created, location: @skill_tree }
      else
        format.html { render action: "new" }
        format.json { render json: @skill_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skill_trees/1
  # PUT /skill_trees/1.json
  def update
    @skill_tree = SkillTree.find(params[:id])

    respond_to do |format|
      if @skill_tree.update_attributes(params[:skill_tree])
        format.html { redirect_to @skill_tree, notice: 'SkillTree was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_trees/1
  # DELETE /skill_trees/1.json
  def destroy
    @skill_tree = SkillTree.find(params[:id])
    @skill_tree.destroy

    respond_to do |format|
      format.html { redirect_to skill_trees_url }
      format.json { head :ok }
    end
  end
end
