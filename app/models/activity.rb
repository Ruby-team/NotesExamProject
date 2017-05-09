class Activity < ApplicationRecord
  has_many :notes
  has_many :filees
  # mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :title, presence: true,
            length: { minimum: 3 }

  validates :description, presence: true,
            length: { minimum: 6 }
end
