class CreateDecisions < ActiveRecord::Migration
	def change
		create_table :decisions do |t|
			t.integer :number
			t.belongs_to :request

			t.timestamps
		end

		add_index :decisions, :request_id
	end
end
