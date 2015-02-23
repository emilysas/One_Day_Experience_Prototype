class AddProfessionIdToProfessional < ActiveRecord::Migration
  def change
    add_reference :professionals, :profession, index: true
    add_foreign_key :professionals, :professions
  end
end
