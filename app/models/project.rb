class Project < ApplicationRecord
  ## Associations
  has_many :attachments
  has_one :preview_image, -> { where(preview: true) }, class_name: 'Attachment', dependant: :destroy
  has_many :images, -> { where(attachment_type: 'image') }, class_name: 'Attachment', dependant: :destroy
  has_many :videos, -> { where(attachment_type: 'video') }, class_name: 'Attachment',dependant: :destroy

  ## Attributes
  accepts_nested_attributes_for :attachments
end
