class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "%{category is not included!" }
  validates :content, length: {minimum: 100}
end
