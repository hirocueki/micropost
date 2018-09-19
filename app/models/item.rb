class Item < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_taggable

  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true
end
