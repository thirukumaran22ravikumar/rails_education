class CreateAthours < ActiveRecord::Migration[7.1]
  def change
    create_table :athours do |t|
      t.string :name
      t.integer :book_id
      t.text :about
      t.timestamps
    end
  end
end
