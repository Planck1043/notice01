class CreateLetterText < ActiveRecord::Migration[5.1]
  def change
    create_table :letter_texts do |t|
      t.string  :title
      t.text    :text

      t.timestamps
    end
  end
end
