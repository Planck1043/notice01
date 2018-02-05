class CreateNotice < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string  :title
      t.text    :text
      t.string  :notice_state
      t.string  :class_type

      t.timestamps
    end
  end

end
