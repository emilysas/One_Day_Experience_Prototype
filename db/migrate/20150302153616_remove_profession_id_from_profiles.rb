class RemoveProfessionIdFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :profession_id, :integer
  end
end
