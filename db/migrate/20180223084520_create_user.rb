class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :staff_id
      t.string  :coding
      t.string  :name
      t.string  :department
      t.string  :role
      t.integer :user_right

      t.timestamps
    end

  add_index :users, :staff_id
  end
end
