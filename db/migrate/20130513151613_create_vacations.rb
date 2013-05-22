class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :applicant
      t.string :duration
      t.string :from
      t.integer :to
      t.integer :user_id

      t.timestamps
    end
		
		add_index :vacations, :user_id
  end
end
