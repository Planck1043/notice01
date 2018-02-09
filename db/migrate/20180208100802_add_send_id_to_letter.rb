class AddSendIdToLetter < ActiveRecord::Migration[5.1]
  def change
    add_column :letters, :send_id, :integer
    add_reference :letters, :sender
    add_reference :letters, :recever
  end
end
