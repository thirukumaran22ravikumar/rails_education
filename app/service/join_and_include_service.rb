class JoinAndIncludeService



	#joins 

	def self.callJoin
		
		profiles_with_users = Profile.joins(:user)
    	puts profiles_with_users.inspect
	    profiles_with_users.each do |profile|
	      puts "Profile ID: #{profile.id}"
	      puts "Bio: #{profile.bio}"
	      puts "User ID: #{profile.user.id}"
	      puts "Username: #{profile.user.name}" # Assuming user has a 'name' attribute
	      #puts "Email: #{profile.user.email}" # Assuming user has an 'email' attribute
	      puts "-----------------------------"
	    end
	end


	# includes

	def self.callIncludes
		profiles_with_users = Profile.includes(:user)
		puts profiles_with_users.inspect
    
	    profiles_with_users.each do |profile|
	      puts "Profile ID: #{profile.id}"
	      puts "Bio: #{profile.bio}"
	      puts "User ID: #{profile.user.id}"
	      puts "Username: #{profile.user.name}" # Assuming user has a 'name' attribute
	      #puts "Email: #{profile.user.email}" # Assuming user has an 'email' attribute
	      puts "-----------------------------"
	    end


	end






end