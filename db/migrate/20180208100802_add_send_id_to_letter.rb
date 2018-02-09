class AddSendIdToLetter < ActiveRecord::Migration[5.1]
  def change
    add_column :letters, :send_id, :integer
  end
end
