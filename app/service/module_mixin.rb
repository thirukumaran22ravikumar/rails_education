
class ModuleMixin
	# Modules consist a method 

	module Child_1 
		def a1 
			puts 'This is Child one.'
		end
	end


	module Child_2 
		def a2 
			puts 'This is Child two.'
		end
	end


	module Child_3 
		def a3 
			puts 'This is Child three.'
		end
	end



	# Creating class 
	class Parent 
		include Child_1 
		include Child_2 
		include Child_3 
		def display 
			puts 'Three modules have included.'
		end

		def self.callerfuntion
			object = Parent.new

			# Calling methods 
			object.display 
			object.a1 
			object.a2 
			object.a3 
		end

	end


 #How to call the class 


 #	ModuleMixin::Parent.callerfuntion

 

end

