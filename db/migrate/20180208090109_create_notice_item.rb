class CreateNoticeItem < ActiveRecord::Migration[5.1]
  def change
    create_table :notice_items do |t|
      t.string  :department
      
      t.timestamps
    end
  end
end
