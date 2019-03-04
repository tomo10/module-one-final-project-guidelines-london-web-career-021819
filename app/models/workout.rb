class Workout < ActiveRecord::Base


  def calories
    self.each 
  end

end
