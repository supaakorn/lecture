class MainController < ApplicationController
  def test
    @time = params[:time]
    @name = params[:name]
    @score = params[:score]
    @is_blank = params[:blank]
  end


  def test_post 
    names = params[:subject][:name]
    scores = params[:subject][:score]
    

    lsn = names.zip(scores)

    is_blank = Array.new
    
    #------- check blank ------
    puts "-----------"
    puts names.length
    puts "-----------"

    for i in 0..names.length do
      if names[i].blank? || scores[i].blank?
        is_blank.push(i)
      end
    end

    if is_blank.length != 0
      redirect_to controller: "main", action: "test", time: params[:time] , blank:is_blank , name:names , score:scores and return
    end


    #------------------------------

    for a in lsn
      if (Subject.find_by(name: "#{a[0]}") == nil)
        b = Subject.create(name: "#{a[0]}", score: "#{a[1]}")
        b.save
      else
        b = Subject.find_by(name: "#{a[0]}")
        b.score = a[1]
        b.save
      end
    end

    


    
    @max_subject = names[scores.map(&:to_i).rindex(scores.map(&:to_i).max())]
    @sum_number = scores.map(&:to_i).sum
    
    
  end
  def first_page
    

  end

  
end
