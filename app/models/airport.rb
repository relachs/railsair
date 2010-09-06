class Airport < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :country_id
  validates_length_of :code, :is => 3
  validates_uniqueness_of :code
  belongs_to :country
end
