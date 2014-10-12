class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.string :start
      t.string :end
      t.float  :longitude
      t.float  :latitude


      t.timestamps
    end
  end
end
