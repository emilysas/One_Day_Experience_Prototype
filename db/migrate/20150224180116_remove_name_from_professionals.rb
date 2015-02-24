class RemoveNameFromProfessionals < ActiveRecord::Migration
  def change
    remove_column :professionals, :name, :string
  end
end
