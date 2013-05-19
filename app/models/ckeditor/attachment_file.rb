class Ckeditor::AttachmentFile < Ckeditor::Asset

  has_attached_file :data, 
    :storage => :cloud_files,
    :cloudfiles_credentials =>  "#{Rails.root}/config/rackspace.yml",
    :container => 'ADM_comments', 
    :ssl => true,
    :path => ":attachment/:id/:style/:normalized_file_name"
  
  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end

  def normalized_file_name
    "#{self.id}-#{self.data_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end
  
  
	validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 4.megabytes
end