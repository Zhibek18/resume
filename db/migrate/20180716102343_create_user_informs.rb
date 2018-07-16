class CreateUserInforms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informs do |t|
      t.integer :user_id
      t.string :firstname
      t.string :surname
      t.string :country
      t.string :city
      t.string :street
      t.integer :house
      t.integer :age
      t.timestamps
    end
  end
end
