class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :gender
      t.integer :user_id

      t.timestamps
    end
  end
end
