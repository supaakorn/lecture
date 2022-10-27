class ScoreController < ApplicationController
  def list
    @subjects = Subject.all
  end
  
  

end
