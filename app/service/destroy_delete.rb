class DestroyDelete

	def self.callerfuntion
		# Example 1: Creating a user
		user = User.create(name: 'Johnss')  # This will create a user with a non-admin name

		# Example 2: Attempting to destroy a user
		user.destroy  # This will trigger the before_destroy callback and validation

		puts "-----------------destroy----------------------"

		# Example 3: Creating an admin user
		admin_user = User.create(name: 'Admin User')  # This will create an admin user

		# Example 4: Attempting to destroy an admin user
		admin_user.destroy  # This will not trigger the before_destroy callback due to admin status

		puts "-------------delete---------------"

		# Example 5: Creating an  user
		admin_user = User.create(name: 'Admin delete')  # This will create an admin user

		# Example 4: Attempting to delete an admin user
		admin_user.delete  # This will not trigger the before_destroy callback due to admin status

	end
end