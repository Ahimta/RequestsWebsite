class CreateComings < ActiveRecord::Migration
  def change
    create_table :comings do |t|
      t.string :reason
			
      t.timestamps
    end
  end
end
