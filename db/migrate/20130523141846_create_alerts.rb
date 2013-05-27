class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
    
    add_index :alerts, :title
  end
end
