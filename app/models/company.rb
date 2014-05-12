class Company < ActiveRecord::Base
  attr_accessible :name,:address
  has_many :users
end
