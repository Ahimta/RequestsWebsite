class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.integer :duration
      t.string :from
      t.string :to
      t.belongs_to :request

      t.timestamps
    end
		
		add_index :vacations, :request_id
  end
end
