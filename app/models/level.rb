class Level < ActiveRecord::Base
  belongs_to :skill_tree, :inverse_of => :levels
  has_many :tasks

  def as_json(options={})
    super({:include => [:tasks], :methods => [:score]}.reverse_merge(options))
  end

  #super(options.merge(:methods => [:tasks, :score]))
  #super(options.merge(:only =>[:id, :name], :include => [:levels], :methods => [:score]))
  #super(options.merge(:only =>[:id, :name], :include => [:tasks]))

  def score
    num_true = 0
    count = 0

    tasks.each do |task|
      count = count + 1
      num_true = num_true + 1 if task.status
    end

    return 0 if count == 0
    num_true.to_f/count
  end
end
