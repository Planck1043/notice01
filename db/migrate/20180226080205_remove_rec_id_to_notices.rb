class RemoveRecIdToNotices < ActiveRecord::Migration[5.1]
  def change
    remove_column :notices, :rec_id
  end
end
