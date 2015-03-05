class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :student, index: true
      t.references :profile, index: true
      t.date :date
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :visits, :students
    add_foreign_key :visits, :profiles
  end
end
