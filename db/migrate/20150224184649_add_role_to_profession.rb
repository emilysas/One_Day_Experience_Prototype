class AddRoleToProfession < ActiveRecord::Migration
  def change
    add_column :professions, :role, :text
  end
end
