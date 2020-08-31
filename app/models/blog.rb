class Blog < ApplicationRecord
	validates :title, length: { minimum: 2 }
  validates :description, length: { maximum: 500 }
end
