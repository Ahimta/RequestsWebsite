class CreateComings < ActiveRecord::Migration
  def change
    create_table :comings do |t|
      t.string :applicant
      t.string :reason
      t.boolean :accepted
      t.integer :user_id
			
      t.timestamps
    end
		
		add_index :comings, :user_id
  end
end
