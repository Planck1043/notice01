class CreateLetter < ActiveRecord::Migration[5.1]
  def change
    create_table :letters do |t|
      t.integer :letter_text_id
      t.string  :text_see

      t.timestamps
    end
  end
end
