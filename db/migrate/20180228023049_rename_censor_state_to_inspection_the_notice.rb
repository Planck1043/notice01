class RenameCensorStateToInspectionTheNotice < ActiveRecord::Migration[5.1]
  def change
    rename_column :notices, :censor_state, :inspection
  end
end
