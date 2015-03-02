class RemoveRoleFromProfessionals < ActiveRecord::Migration
  def change
    remove_column :professionals, :role, :string
  end
end
