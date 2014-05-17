class User < ActiveRecord::Base
  rolify
  has_surveys
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:company_attributes
  belongs_to :category
  belongs_to :company
  accepts_nested_attributes_for :company
    # attr_accessible :title, :body
end
