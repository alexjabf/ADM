class Speaker < ActiveRecord::Base
  attr_accessible :country, :fullname, :topic, :avatar, :conference_date
  has_attached_file :avatar

  def to_param
    "#{id}-#{fullname.parameterize}"
  end
  
  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end

  def normalized_file_name
    "#{self.id}-#{self.avatar_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end
end
