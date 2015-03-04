class CreateSectors < ActiveRecord::Migration

  def change
    create_table :sectors do |t|
      t.text :name
      t.attachment :image

      t.timestamps null: false
    end
  end
end
