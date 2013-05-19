class CreateOcMembers < ActiveRecord::Migration
  def change
    create_table :oc_members do |t|
      t.string :first_names
      t.string :last_names
      t.string :sex_type
      t.string :position
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :fax
      t.string :cellphone
      t.string :email
      t.timestamps
    end
  end
end
