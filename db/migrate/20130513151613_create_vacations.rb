class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :applicant
      t.integer :duration
      t.integer :day
      t.integer :month
      t.integer :year
      t.boolean :accepted
      t.boolean :reviewd
      t.references :user

      t.timestamps
    end
  end
end
