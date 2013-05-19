class ExpositionCenter < ActiveRecord::Base
  attr_accessible :title, :avatar
  
    has_attached_file :avatar, 
    :styles => { :large  => "600x600>" },
    :storage => :cloud_files,
    :cloudfiles_credentials =>  "#{Rails.root}/config/rackspace.yml",
    :container => 'ADM_exposition_center', 
    :ssl => true,
    :path => ":attachment/:id/:style/:normalized_file_name"

  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end

  def normalized_file_name
    "#{self.id}-#{self.avatar_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end  
  
end
