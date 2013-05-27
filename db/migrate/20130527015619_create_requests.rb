class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.boolean :accepted
      t.string :rtype
      t.belongs_to :applicant

      t.timestamps
    end
    
    add_index :requests, :applicant_id
  end
end
