class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
