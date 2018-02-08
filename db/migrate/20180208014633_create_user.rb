class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :department
      t.integer :role
      t.string  :user_right

      t.timestamps
    end
  end
end
