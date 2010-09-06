class CreateAirports < ActiveRecord::Migration
  def self.up
    create_table :airports do |t|
      t.column :string, :code, :limit => 3
      t.column :string, :name
    end
  end

  def self.down
    drop_table :airports
  end
end
