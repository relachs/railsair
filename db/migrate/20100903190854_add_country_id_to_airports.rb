class AddCountryIdToAirports < ActiveRecord::Migration
  def self.up
    add_column :airports, :country_id, :integer
  end

  def self.down
    remove_column :airports, :country_id
  end
end
