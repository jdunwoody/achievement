module ApplicationHelper
  def title
    @title
    #'title from application helper'
  end

  def skill_tree_header
    SkillTree.all(:limit => 20, :order => "name")
  end
end
