# Program in Ruby for a count of total Grocery items 

class ClassMethord


	class Grocery 

		# class variable 
		@@total_count = 0

		# class array 
		@@items_list = [] 

		def add_item(item) 

			# adding item to the array 
			@@items_list.push(item) 
			@@total_count += 1#counting 
		end

		

		def print_items 
			puts "Total number of items --> #@@total_count"; 
			puts "All items --> #@@items_list"; 
		end


		# direct access 
		def Grocery.printitems_only# or self.printitems_only 
			puts "\nGrocery.printitems_only", @@items_list.join("\n"); 
		end


		def self.callerfuntion
			list = Grocery.new() 

			list.add_item("shampoo") 
			list.add_item("face wash") 
			list.add_item("serum") 
			list.add_item("mud pack") 
			list.add_item("tea tree oil") 
			list.add_item("toner") 

			list.print_items 

			# direct access 
			Grocery.printitems_only 

			# throws an error 
			list.printitems_only 
		end
	end



end