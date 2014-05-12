class CategoriesQuestions < ActiveRecord::Migration
  def self.up
  	create_table 'categories_questions', :id => false do |t|
       t.column :category_id, :integer
       t.column :survey_questions_id, :integer
    end
  end

  def self.down
  	drop_table "categories_questions"
  end
end
