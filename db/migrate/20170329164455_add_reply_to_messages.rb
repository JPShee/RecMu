class AddReplyToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :replied, :boolean, default: false
  end
end

