class Page < ActiveRecord::Base
  attr_accessible:content, :name, :status, :project_id
  validates :name, :content, :presence => true
  validates :name, :uniqueness => true
end
