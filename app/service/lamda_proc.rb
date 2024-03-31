class LamdaProc 


	def self.callerfuntion
		puts "----------proc---------"
		# Creating a Proc using proc method
		my_proc = proc { |x| puts x * 2 }

		# Calling the Proc
		my_proc.call(3)  # Output: 6

		puts "--------lambda--------"
		# Creating a Lambda using lambda keyword
		my_lambda = lambda { |x| puts x * 2 }

		# Creating a Lambda using -> syntax
		my_lambda = ->(x) { puts x * 2 }

		# Calling the Lambda
		my_lambda.call(3) 
	end




#-------different--------

#Argument Handling:

# 1.Lambda checks the number of arguments passed to it and raises an ArgumentError if the number is incorrect.

# 2.Proc does not enforce the correct number of arguments; if the number is incorrect, it simply assigns nil to missing parameters.
# Lambda with strict argument checking

	def self.callerfuntion2

		puts "-----------call--------------"
		

		# Proc with lenient argument handling
		my_proc = proc { |x| puts x * 2 }
		my_proc.call(3)      # Output: 6


		my_proc.call(3, 4)    # Output: 6 (ignores extra argument)
		
		my_proc.call           # Output: 0 (assigns nil to missing argument)

		puts "-----------------end----------------------"

	end








end