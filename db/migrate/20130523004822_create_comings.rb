class CreateComings < ActiveRecord::Migration
  def change
    create_table :comings do |t|
      t.string :reason
      t.belongs_to :request
			
      t.timestamps
    end
		
		add_index :comings, :request_id
  end
end
