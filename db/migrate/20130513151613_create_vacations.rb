class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.integer :duration
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
