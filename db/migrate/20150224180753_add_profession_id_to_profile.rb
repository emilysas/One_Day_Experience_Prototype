class AddProfessionIdToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :profession, index: true
    add_foreign_key :profiles, :professions
  end
end
