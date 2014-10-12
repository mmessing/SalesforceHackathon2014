class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :fileName

      t.timestamps
    end
  end
end
