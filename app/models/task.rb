class Task < ActiveRecord::Base
  belongs_to :level, :inverse_of => :tasks
  has_many :frequencies

  #def as_json(options={})
    #super(options.merge(:only =>
                        #[:id, :name, :url, :description,
                        #:status, :frequency]))
  #end

  def initialise
    status = false
  end

  def toggle_completed!
    self.status = !self.status
  end
end
