class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.belongs_to :location

      t.timestamps
    end
    
    add_index :users, [:username, :location_id]
  end
end
