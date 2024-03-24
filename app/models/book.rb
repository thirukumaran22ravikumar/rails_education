class Book < ApplicationRecord
	belongs_to :author, foreign_key: "athours_id"
end
