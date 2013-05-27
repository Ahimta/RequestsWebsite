class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :reason
			t.belongs_to :request

      t.timestamps
    end
		
		add_index :leaves, :request_id
  end
end
