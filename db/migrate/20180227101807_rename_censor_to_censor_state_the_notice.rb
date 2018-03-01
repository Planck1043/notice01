class RenameCensorToCensorStateTheNotice < ActiveRecord::Migration[5.1]
  def change
    rename_column :notices, :censor, :censor_state
  end
end
