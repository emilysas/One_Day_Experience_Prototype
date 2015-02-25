class AddAcademicBackAndReqQualsAndReqSkillsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :academic_back, :text
    add_column :profiles, :req_quals, :text
    add_column :profiles, :req_skills, :text
  end
end
