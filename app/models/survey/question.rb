class Survey::Question < ActiveRecord::Base

  self.table_name = "survey_questions"

  acceptable_attributes :text, :survey, :options_attributes => Survey::Option::AccessibleAttributes

  # relations
 attr_accessible :categories_attributes,:question_type
  belongs_to :survey
  has_many   :options, :dependent => :destroy
  has_many :categories,class_name: "CompanyCategory"
   has_many :company_categories,through: :categories
  accepts_nested_attributes_for :categories
  #   :reject_if => ->(a) { a[:text].blank? },
  #   :allow_destroy => true

  # validations
  validates :text, :presence => true, :allow_blank => false

  def correct_options
    return options.correct
  end

  def incorrect_options
    return options.incorrect
  end
end
