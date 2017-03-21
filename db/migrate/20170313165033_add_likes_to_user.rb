#This looks gross but I got tired of trying to concatenate the strings
#There are 114 zeroes in the string
class AddLikesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :likes, :string, :default => "100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

  end
end
