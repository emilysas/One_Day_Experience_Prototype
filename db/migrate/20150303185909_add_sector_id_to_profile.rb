class AddSectorIdToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :sector, index: true
    add_foreign_key :profiles, :sectors
  end
end
