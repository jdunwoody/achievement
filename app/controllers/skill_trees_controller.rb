class SkillTreesController < ApplicationController
  @title = 'SkillTrees'

  def index
    @skill_trees = SkillTree.all(:order => 'name')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skill_trees }
    end
  end

  def show
    @skill_tree = SkillTree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill_tree }
    end
  end

  def new
    @skill_tree = SkillTree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill_tree }
    end
  end

  def edit
    @skill_tree = SkillTree.find(params[:id])
  end

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

  def destroy
    @skill_tree = SkillTree.find(params[:id])
    @skill_tree.destroy

    respond_to do |format|
      format.html { redirect_to skill_trees_url }
      format.json { head :ok }
    end
  end
end
