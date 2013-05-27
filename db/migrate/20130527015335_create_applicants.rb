class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
			t.belongs_to :user
			
      t.timestamps
    end
    
    add_index :applicants, :user_id
  end
end
