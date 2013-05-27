class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :line
      t.string :number
      t.belongs_to :request

      t.timestamps
    end
		
		add_index :tickets, :request_id
  end
end
