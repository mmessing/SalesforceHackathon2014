class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.string :birthday
      t.string :location

      t.string :provider
      t.string :uid
      t.string :name
      t.string :image
      t.string :token
      t.string :expires_at

      t.timestamps
    end
  end
end
