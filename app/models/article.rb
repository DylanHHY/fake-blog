class Article < ApplicationRecord
  # relationships
  belongs_to :user

  # validates
  validates :title, presence: true, length: {minimum: 2}
end
