class SkillTree < ActiveRecord::Base
  has_many :levels

  def as_json(options={})
    super( :include => { :levels => { :include => [ :tasks ] } }, :methods => [:score] )
  end

  def self.everything
    SkillTree.all.as_json
  end

  def score
    1.0
    #score = 0.0
    #count = 0

    #levels.each do |level|
      #level.tasks.each do |task|
        #count = count + 1
        #score = score + 1 if task.status
      #end
    #end
    #score/count
  end
end

#levels_json = levels.as_json(:include => [:tasks])
##puts "levels_json #{levels_json}"
#options = {:levels => levels_json}
##puts "options #{options}"
#super(options)
#
#def tasks
#levels.map{|level| level.tasks}.flatten.as_json
#end

#tasks = levels.map {|level| level.tasks}.flatten
#SkillTree.find(1).levels.map{|level| level.tasks}.flatten.sort{ |a,b|  a.status ? (b.status ? 0 : -1) : (b.status ? 1 : 0) }.map{|t|t.status}

#levels.map{|level| level.tasks}.flatten.sort{ |a,b|  a.status ? (b.status ? 0 : -1) : (b.status ? 1 : 0) }
#super(:include => [:levels])
#super(options.merge(:only =>[:id, :name], :include => [:levels], :methods => [:score]))
#user.as_json(:include => {:photos => {:include => [:comments, :likes]}})
#super.as_json(:methods => {:levels => {:include => [:tasks]}})
#super(options.merge(:include => [:levels], :methods => [:score]))
#super.as_json(:methods => [:levels])
