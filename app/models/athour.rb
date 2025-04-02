class Athour < ApplicationRecord
	has_many :books, foreign_key: "athours_id", class_name: "Athour"
end
