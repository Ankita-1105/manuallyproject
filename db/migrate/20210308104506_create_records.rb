class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact_no
      t.string :address

      t.timestamps
    end
  end
end
