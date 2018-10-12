class Project < ApplicationRecord
  ## Associations
  has_many :attachments, inverse_of: :project, dependent: :destroy
  has_one :preview_image, -> { where(preview: true) }, class_name: 'Attachment', inverse_of: :project, dependent: :destroy
  has_many :images, -> { where(attachment_type: 'image') }, class_name: 'Attachment', dependent: :destroy
  has_many :videos, -> { where(attachment_type: 'video') }, class_name: 'Attachment',dependent: :destroy

  ## Attributes
  accepts_nested_attributes_for :preview_image
  accepts_nested_attributes_for :attachments
end
