class Event < ApplicationRecord

  belongs_to :user, optional: true

  has_many :comments, dependent: :destroy
  has_many :subscriptions

  validates :user, presence: true

  validates :title, presence: true, length: { maximum: 255 }
  validates :address, presence: true
  validates :datetime, presence: true
end
