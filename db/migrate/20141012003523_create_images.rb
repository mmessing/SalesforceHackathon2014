class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :fileName
      t.integer :dog_id

      t.timestamps
    end
  end
end
