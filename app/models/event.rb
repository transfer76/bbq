class Event < ApplicationRecord

  belongs_to :user, optional: true

  has_many :comments, dependent: :destroy
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :user
  has_many :photos

  validates :user, presence: true

  validates :title, presence: true, length: { maximum: 255 }
  validates :address, presence: true
  validates :datetime, presence: true

  def visitors
    (subscribers + [user]).uniq
  end

  def pincode_valide?(pin2chek)
    pincode == pin2chek
  end  
end
