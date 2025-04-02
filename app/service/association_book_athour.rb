class AssociationBookAthour
	def self.create_book_using_athour

		# # has many ------------------------------------------------------------------------------
		table_athour = Athour.all
		table_books = Book.all
		puts table_athour.inspect+"--------------------athour-------------------"
		puts table_books.inspect+"------------------------book---------------"


		# Create an author
		author = Athour.create(name: "ABC", about: "Author of the Harry Potter series")

		# Inspect the author
		puts author.inspect + "---------------------after create------------------"

		# Create books associated with the author
		book1 = author.books.create(name: "Harry Potter", price: 109, about: "First book in series")
		puts book1.inspect + "------------------------first book---------------"

		book2 = author.books.create(name: "Harry Potter s", price: 129, about: "Second book in series")
		puts book2.inspect + "------------------------second book--------------"

		# Accessing author's books
		author.books.each do |book|
		  puts "#{author.name} wrote #{book.name}"
		end

		# # delete -----------------------------------------------------------------------------------


		# names = Athour.where(id: 2).first
		# puts names.inspect+"----------------------------------------------------"
		# puts names.books.inspect

		# names.destroy
		# names.books.destroy_all


		# # has_one --------------------------------------------------------------------------------------

		# user = User.create(name: "guruss")
		# # user.create_profile(bio: "Hello, I'm John")
		# puts user.valid?  # false
		# puts user.errors.full_messages 
		# # Accessing user's profile
		# # puts user.profile.bio


	end
end