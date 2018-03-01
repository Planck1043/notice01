class AddModifyNumberToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :modify_number, :integer, default: 0
  end
end
