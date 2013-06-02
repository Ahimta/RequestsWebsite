class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.belongs_to :passportable, polymorphic: true
      t.attachment :picture

      t.timestamps
    end
    
    add_index :passports, [:passportable_id, :passportable_type]
  end
end
