class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :reason

      t.timestamps
    end
  end
end
