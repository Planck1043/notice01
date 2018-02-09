class AddNoticeItemIdToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :notice_item_id, :integer
  end
end
