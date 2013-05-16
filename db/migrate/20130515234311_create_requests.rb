class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :applicant_id
      t.integer :user_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
