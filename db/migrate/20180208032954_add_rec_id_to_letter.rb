class AddRecIdToLetter < ActiveRecord::Migration[5.1]
  def change
    add_column :letters, :rec_id, :integer
  end
end
