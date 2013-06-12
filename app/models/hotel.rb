class Hotel < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :fax, :name, :phone1, :phone2, :state, :avatar, :zip, :webpage, :email, :flyer
  has_attached_file :avatar
  has_attached_file :flyer

  def to_param
    "#{id}-#{name.parameterize}"
  end
  
  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end

  def normalized_file_name
    "#{self.id}-#{self.avatar_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end
  
end
