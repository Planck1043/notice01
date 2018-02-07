class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text     :text
      t.integer  :notice_id

      t.timestamps
    end
  end
end
