class Post < ActiveRecord::Base 
  validates_presence_of :title #  has an error for missing title
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) } #   has an error for invalid category
  validates :content, length: { minimum: 100 } # has an error for too short content
end
