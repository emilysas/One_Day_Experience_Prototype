class AddProfessionalIdToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :professional, index: true
    add_foreign_key :profiles, :professionals
  end
end
