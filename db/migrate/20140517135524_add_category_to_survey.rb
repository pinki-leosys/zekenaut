class AddCategoryToSurvey < ActiveRecord::Migration
  def self.up
  	add_column :survey_surveys, :category_id, :integer
  end
  def self.down
  	remove_column :survey_surveys, :category_id
  end
end
