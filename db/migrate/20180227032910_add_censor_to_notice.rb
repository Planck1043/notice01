class AddCensorToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :censor, :string
  end
end
