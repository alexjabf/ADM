class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :webpage
      t.string :email
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at
      t.string :flyer_file_name
      t.string :flyer_content_type
      t.integer :flyer_file_size
      t.datetime :flyer_updated_at
      
      t.timestamps
    end
  end
end
