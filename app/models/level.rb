class Level < ActiveRecord::Base
  has_many :category
  belongs_to :progression
end
