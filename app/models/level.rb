class Level < ActiveRecord::Base
  belongs_to :skill_tree, :inverse_of => :levels
  has_many :tasks

  def as_json(options={})
    super(options.merge(:include => [:tasks], :methods => [:score]))
  end

  #super(options.merge(:only =>[:id, :name], :include => [:levels], :methods => [:score]))
  #super(options.merge(:only =>[:id, :name], :include => [:tasks]))

  def score
    score = 0.0
    count = 0

    tasks.each do |task|
      count = count + 1
      score = score + 1 if task.status
    end

    score/count
  end
end
