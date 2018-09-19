class Item < ApplicationRecord
  belongs_to :user
  acts_as_taggable

  validates :title, presence: true, length: {maximum: 10}
  validates :content, presence: true
end
