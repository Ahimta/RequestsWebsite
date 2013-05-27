class CreateCompanions < ActiveRecord::Migration
  def change
    create_table :companions do |t|
      t.string :name
      t.string :relation
      t.string :birthdate
      t.belongs_to :ticket

      t.timestamps
    end

    add_index :companions, :ticket_id
  end
end
