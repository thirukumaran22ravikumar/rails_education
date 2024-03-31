class HashHashWithIndiffirentAccess
	require 'active_support/all'

	require 'active_support/core_ext/hash/indifferent_access'

	def self.callerfuntion

		regular_hash = { 'Name' => 'John', 'Age' => 25 }
		puts regular_hash['Name']   # Output: John
		puts regular_hash[:Name]   # Output: nil (case-sensitive)
		puts "------s----------------------"

		
		hash_with_indifferent_access = HashWithIndifferentAccess.new({ 'Name' => 'John', 'Age' => 25 })
		puts hash_with_indifferent_access['Name']  # Output: John
		puts hash_with_indifferent_access[:Name]   # Output: John (case-insensitive)
		puts "-------s----------------------"




		params = HashWithIndifferentAccess.new({ 'user' => { 'name' => 'John', 'age' => 25 } })
		puts params[:user][:name]  # Output: John
		puts params['user']['age']  # Output: 25
	end
end