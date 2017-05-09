class Filee < ApplicationRecord
  belongs_to :activity
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
