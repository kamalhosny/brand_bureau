class FilelessIO < StringIO
  attr_accessor :original_filename

  def self.from_base64(file_name, file_base64)
    decoded = file_base64.split(',')
    image = Base64.decode64(decoded[1])
    file = FilelessIO.new(image)
    file.original_filename = file_name
    file
  end
end
