class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :sender_id, foreign_key: true
      t.text :body
      t.integer :reply_id, foreign_key: true

      t.timestamps
    end
  end
end

