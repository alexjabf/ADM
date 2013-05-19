class AddCityToIp < ActiveRecord::Migration
  def change
    add_column :ips, :city, :string
    add_column :ips, :state, :string
    add_column :ips, :region_code, :string
    add_column :ips, :country, :string
    add_column :ips, :country_code, :string
    add_column :ips, :latitude, :float
    add_column :ips, :longitude, :float
    add_column :ips, :host, :string
    add_column :ips, :port, :integer
    add_column :ips, :time_zone, :string
    add_column :ips, :address, :string
  end
end
