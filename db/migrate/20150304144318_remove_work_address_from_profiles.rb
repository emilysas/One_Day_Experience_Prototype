class RemoveWorkAddressFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :work_address, :string
  end
end
