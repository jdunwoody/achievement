require 'spec_helper'

describe MasterController do
  #http://localhost:3000/skill_trees/1.json
  #http://localhost:3000/skill_trees.json
  #
  #Create JSON
  #curl -H "Content-Type:application/json" -H "Accept:application/json" -d "{\"skill_tree\":{\"name\":\"SkillTree from json\"}}" http://localhost:3000/skill_trees
  #
  #Edit JSON
  #curl -X PUT -H "Content-Type:application/json" -H "Accept:application/json" -d "{\"skill_tree\":{\"name\":\"SkillTree edited json\"}}" http://localhost:3000/skill_trees/3
  #
  #Delete JSON
  #curl -X DELETE -H "Content-Type:application/json" -H "Accept:application/json" http://localhost:3000/skill_trees/3
end
