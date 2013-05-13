class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :applicant
      t.string :line
      t.string :number
      t.boolean :accepted
      t.boolean :reviewed
      t.references :user

      t.timestamps
    end
  end
end
