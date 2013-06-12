class OcMember < ActiveRecord::Base
  attr_accessible :address1, :address2, :cellphone, :city, :email, :fax, :first_names, :last_names, :phone, :position, :state, :zipcode, :sex_type, :avatar
  
  has_attached_file :avatar, 
    :styles => { :large  => "600x600>" },
    :storage => :cloud_files,
    :cloudfiles_credentials =>  "#{Rails.root}/config/rackspace.yml",
    :container => 'ADM_members', 
    :ssl => true,
    :path => ":attachment/:id/:style/:normalized_file_name"

  Paperclip.interpolates :normalized_file_name do |attachment, style|
    attachment.instance.normalized_file_name
  end
  
  def fullname
    first_names + " " + last_names 
  end
  
  def to_param
    "#{id}-#{fullname.parameterize}"
  end

  def normalized_file_name
    "#{self.id}-#{self.avatar_file_name.gsub( /[^a-zA-Z0-9_\.]/, '_')}" 
  end  
  
end
