class Post < ApplicationRecord
  # Associations
  belongs_to :user
  validates :content, presence: true
end
