class AddJobToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :job, :string
  end
end
