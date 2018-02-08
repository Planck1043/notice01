class AddRecIdToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :rec_id, :integer
  end
end
