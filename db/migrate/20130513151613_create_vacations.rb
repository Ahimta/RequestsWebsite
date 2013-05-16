class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :applicant
      t.integer :duration
      t.integer :from_day
      t.integer :from_month
      t.integer :from_year
      t.integer :to_day
      t.integer :to_month
      t.integer :to_year
      t.integer :from
      t.integer :to
      t.integer :user_id

      t.timestamps
    end
  end
end
