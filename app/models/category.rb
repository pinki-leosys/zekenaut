class Category < ActiveRecord::Base
   attr_accessible :name
  #category has_many :questions
  has_many :questions,class_name: "CompanyCategory"
  has_many :users
  has_many :surveys,class_name: "Survey::Survey"
end
