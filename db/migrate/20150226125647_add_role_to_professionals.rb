class AddRoleToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :role, :string
  end
end
