class Country < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :code, :is => 2
  validates_uniqueness_of :code
  has_many :airports
end
