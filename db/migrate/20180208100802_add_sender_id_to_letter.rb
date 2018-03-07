class AddSenderIdToLetter < ActiveRecord::Migration[5.1]
  def change
    add_column :letters, :sender_id, :integer
  end
end
