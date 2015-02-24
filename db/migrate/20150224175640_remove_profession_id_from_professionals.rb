class RemoveProfessionIdFromProfessionals < ActiveRecord::Migration
  def change
    remove_column :professionals, :profession_id, :integer
  end
end
