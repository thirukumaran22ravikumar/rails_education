class ExampleController < ApplicationController

  # yield usage 

  def some_action 
    greet do 
      (1..5).to_a.map{|x| p x}
    end
      
    
  end

  def greet 
    puts "Hello,"
    yield if block_given?
    puts "Nice to meet you!"
  end

  


end
