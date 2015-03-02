class RemoveJobFromProfessionals < ActiveRecord::Migration
  def change
    remove_column :professionals, :job, :string
  end
end
