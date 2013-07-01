class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.boolean :accepted
      t.belongs_to :applicant
      t.belongs_to :requestable, polymorphic: true

      t.timestamps
    end

    add_index :requests, :applicant_id
    add_index :requests, [:requestable_id, :requestable_type]
  end
end
