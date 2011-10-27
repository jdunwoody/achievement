class Level < ActiveRecord::Base
  has_many :task
  belongs_to :skill_tree
end
