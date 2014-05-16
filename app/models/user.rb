class User < ActiveRecord::Base
  rolify
  has_surveys
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :category
  attr_accessible :category_attributes, :name, :id 
  belongs_to :company
  attr_accessible :company_attributes, :name, :address , :id
  # attr_accessible :title, :body
  validates_presence_of :email
end
