class CompanyCategory < ActiveRecord::Base
	self.table_name = "categories_questions"
	belongs_to :category
	belongs_to :question,class_name: "Survey::Question"
   attr_accessible :question_id, :category_id
end
