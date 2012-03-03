class SkillTree < ActiveRecord::Base
  has_many :levels

  def calculate_status
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
