class Level < ActiveRecord::Base
  belongs_to :skill_tree, :inverse_of => :levels
  has_many :tasks

  #def as_json(options={})
    #super(options.merge(:only =>[:id, :name], :include => [:tasks]))
  #end
end
