class MainController < ApplicationController
  def test
    @time = params[:time]
    @name = params[:name]
    @score = params[:score]
  end


  def test_post 
    names = params[:subject][:name]
    scores = params[:subject][:score]
    scores = scores.map(&:to_i)
    names.each do |name|
      if name == ""
        redirect_to controller: "main", action: "test", time: params[:time]
      end
    end
    scores.each do |score|
      if score == ""
        redirect_to controller: "main", action: "test", time: params[:time]
      end
    end

   
    
    
  end
  def first_page
    

  end

  
end
