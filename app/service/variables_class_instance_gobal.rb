#Instance Variables

class VariablesClassInstanceGobal
	def initialize(value)
    	@instance_var = value
  	end

  	def self.instance_method(h)
  		p h
    	puts @instance_var
  	end

end



#Class Variables

class MyClass
  @@class_var = 0

  def increment_class_var
    @@class_var += 1
  end

  def class_var_value
    puts @@class_var
  end
end


#Global Variables

class MyGobal
	puts "8888"
	$global_var = 10

	def self.print_global_var
	  puts $global_var
	end


end


#call functions


class CallFunction 


	#Instance Variables call function
	def self.callerfuntion
		
		obj = VariablesClassInstanceGobal.new(20)
		obj.instance_method 

		# puts @instance_var
	end

	#Class Variables call
	def self.classcallfunction

		obj1 = MyClass.new
		obj1.increment_class_var
		
		obj2 = MyClass.new
		obj2.class_var_value
		
	end


	#Global Variables call
	def self.gobalcall
		puts $global_var
	end
	


end