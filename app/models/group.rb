class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_one_attached :icon
  has_many :purchases


  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true
end



