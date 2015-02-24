class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :info
      t.text :full_description
      t.text :work_address
      t.string :company
      t.boolean :verified

      t.timestamps null: false
    end
  end
end
