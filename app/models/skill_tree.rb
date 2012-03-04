class SkillTree < ActiveRecord::Base
  has_many :levels

  def as_json(options={})
    super(options.merge(:include => [:levels], :methods => [:score]))
  end

  #super(:include => [:levels])
  #super(options.merge(:only =>[:id, :name], :include => [:levels], :methods => [:score]))
  #user.as_json(:include => {:photos => {:include => [:comments, :likes]}})

  def tasks
    levels.map {|level| level.tasks}.flatten
  end

  def score
    score = 0.0
    count = 0

    levels.each do |level|
      level.tasks.each do |task|
        count = count + 1
        score = score + 1 if task.status
      end
    end
    score/count
  end
end
