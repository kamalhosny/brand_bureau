class Attachment < ApplicationRecord
  ## CarrierWave File uploader
  mount_uploader :file, FileUploader

  ## Attributes
  attr_accessor :file_base64, :file_name, :file_url

  ## Associations
  belongs_to :project

  ## Callbacks
  after_initialize :prepare_defaults, unless: :persisted?
  before_validation :upload_base64_file, :upload_url_file
  after_create :update_attachment_type

  def prepare_defaults
    self.preview ||= false
  end

  def upload_base64_file
    self.file = FilelessIO.from_base64(file_name, file_base64) if file_base64.present? && file_name.present?
  end

  def upload_url_file
    self.remote_file_url = file_url if file_url.present?
  end

  private

  def update_attachment_type
    extension = attachment_extension
    type = file_type(extension)
    update(attachment_type: type)
  end

  def attachment_extension
    file.file.extension
  end

  def file_type(extension)
    case extension
    when 'jpg', 'jpeg', 'gif', 'png', 'svg'
      return :image
    when '3gp', 'mp4', 'wmv', 'rmvb'
      return :video
    end
  end
end
