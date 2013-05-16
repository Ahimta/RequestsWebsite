class CreateHijris < ActiveRecord::Migration
  def change
    create_table :hijris do |t|
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
