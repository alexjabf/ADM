class AddDescriptionToIps < ActiveRecord::Migration
  def change
    add_column :ips, :description, :text
  end
end
