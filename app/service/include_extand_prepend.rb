class IncludeExtandPrepend

	module IndoorPet
	    def can_be_housebroken?
	      puts "thiru"
	        true
	        
	    end
	end


	class Animal 
	  def thiru
	    puts "suck u "
	  end
	end 


	class RabbitInclude < Animal 
	    include IndoorPet

	    def self.callerfuntioninclude
	    	roger = RabbitInclude.new()
			roger.thiru
			roger.can_be_housebroken?

	    end

	end

	#call
	#IncludeExtandPrepend::RabbitInclude.callerfuntioninclude








	#-------------------------------------extend---------------------------------------


	class RabbitExtend < Animal 
	    extend IndoorPet
	    def self.callerfuntionextend
	    	roger = RabbitExtend.new()
			roger.thiru
			RabbitExtend.can_be_housebroken?
	    end
	end




	# call 
	# IncludeExtandPrepend::RabbitExtend.callerfuntionextend




	#----------------------------------prepend---------------------------------------



	class RabbitPrepend < Animal 
	    prepend IndoorPet
	    def self.callerfuntionprepend
	    	roger = RabbitPrepend.new()
			roger.thiru
			roger.can_be_housebroken?
	    end

	end


	#call
	# IncludeExtandPrepend::RabbitPrepend.callerfuntionextend









	# ------------------------------------- diffrent between include vs prepend ------------------------------------------------
	

	module B
	  def hello
	    puts "Hello from B"
	  end
	end

	class MyClass
	  prepend B
	  def hello
	    puts "Hello from MyClass"
	  end

	  def self.callerfuntion
	  	obj = MyClass.new
		obj.hello  # Output: Hello from B

	  end
	end

	#call
	#IncludeExtandPrepend::MyClass.callerfuntion






end