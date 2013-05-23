class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :applicant
      t.integer :duration
      t.string :from
      t.string :to
      t.integer :user_id

      t.timestamps
    end
		
		add_index :vacations, :user_id
  end
end
