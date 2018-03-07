class AddReceverIdToLetter < ActiveRecord::Migration[5.1]
  def change
    add_column :letters, :recever_id, :integer
  end
end
