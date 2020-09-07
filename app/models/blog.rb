class Blog < ApplicationRecord
	belongs_to :user
	has_many :comments
	validates :title, length: { minimum: 2 }
  validates :description, length: { minimum: 2 }
end
