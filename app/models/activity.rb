class Activity < ApplicationRecord
  has_many :notes
  validates :title, presence: true,
            length: { minimum: 3 }

  validates :description, presence: true,
            length: { minimum: 6 }
end
