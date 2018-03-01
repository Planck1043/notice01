class CreateCensor < ActiveRecord::Migration[5.1]
  def change
    create_table :censors do |t|
      t.text    :text
      t.integer :notice_id

      t.timestamps
    end
  end
end
