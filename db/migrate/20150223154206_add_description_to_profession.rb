class AddDescriptionToProfession < ActiveRecord::Migration
  def change
    add_column :professions, :description, :text
  end
end
