class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
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
