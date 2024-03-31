class User < ApplicationRecord
	has_one :profile
	# validates :name, uniqueness: true
	# validates :name, uniqueness: true
	# validate :must_be_available
	# validates :name, presence: true, if: -> { name == 'thitu' }
  	# private

  	# def must_be_available
    # 	errors.add(:base, 'name must be available') unless name?
  	# end




  	# # example triggering callback and validates

  	# before_destroy :check_if_admin
	# validates :name, presence: true

	# private

	# def check_if_admin
	# 	puts "triggering"
	#     throw(:abort) if admin?
	# end

	# def admin?
    # 	# Check if the user's name starts with 'admin'
    # 	name.downcase.start_with?('admin')
  	# end
end
