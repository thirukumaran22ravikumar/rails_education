# rake task --------------------------------------------------------------------



namespace :db do
	desc "example"
	task example: :environment do 

		puts "-------gggggggggggg-------"

		
	end
	
end

#call 
# rake db:example




#argument passing in rake task -----------------------------------------------------



# namespace :db do

#   task :example, [:option]  => [:environment] do |task, args|
#   	data = args[:option]
#   	puts task.to_s
#   	puts data.to_s
    
#   end
# end



#call 
# rake db:example["thiru"]
