class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :chat_room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
