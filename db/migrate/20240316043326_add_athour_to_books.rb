class AddAthourToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :athours_id, :integer
  end
end
