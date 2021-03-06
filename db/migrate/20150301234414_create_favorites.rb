class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :student, index: true
      t.references :favorited, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :students
  end
end
