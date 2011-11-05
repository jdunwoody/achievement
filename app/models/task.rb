class Task < ActiveRecord::Base
  belongs_to :level, :inverse_of => :tasks
  has_many :frequencies

  def initialise
    status = false
  end
end
