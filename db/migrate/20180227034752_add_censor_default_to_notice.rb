class AddCensorDefaultToNotice < ActiveRecord::Migration[5.1]
  def change
     change_column_default :notices, :censor, "未审核"
  end
end
