class AddTypeToQuestion < ActiveRecord::Migration
  def self.up
  	add_column :survey_questions, :type, :string
  end
  def self.down
  	remove_column :survey_questions, :type
  end
end
