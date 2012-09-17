class Project < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  validates :name, :description, :presence => true
  validates :name, :uniqueness => true

  has_many :pages
  belongs_to :user
end
