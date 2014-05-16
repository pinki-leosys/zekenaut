class Category < ActiveRecord::Base
   #attr_accessible :name
   attr_accessible :categories_attributes
  #category has_many :questions
  has_many :users
  has_and_belongs_to_many :questions, class_name: "Survey::Question",join_table: "categories_questions"
end
