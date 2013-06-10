class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :avatar, :place
  has_attached_file :avatar


  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end

  def normalized_file_name
    "#{self.id}-#{self.avatar_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end
end
