class AddMotivationAndSuitabilityAndExpectationsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :motivation, :text
    add_column :profiles, :suitability, :text
    add_column :profiles, :expectations, :text
  end
end
