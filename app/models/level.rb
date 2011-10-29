class Level < ActiveRecord::Base
  belongs_to :skill_tree, :inverse_of => :levels
  has_many :tasks
end
