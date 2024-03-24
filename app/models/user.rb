class User < ApplicationRecord
	has_one :profile
	# validates :name, uniqueness: true
	# validates :name, uniqueness: true
	# validate :must_be_available
	validates :name, presence: true, if: -> { name == 'thitu' }
  	# private

  	# def must_be_available
    # 	errors.add(:base, 'name must be available') unless name?
  	# end
end
