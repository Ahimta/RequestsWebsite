class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :applicant
      t.string :reason
      t.boolean :accepted
      t.boolean :reviewed
      t.references :user

      t.timestamps
    end
  end
end
