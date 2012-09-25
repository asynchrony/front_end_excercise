class Location < ActiveRecord::Base
  belongs_to :profile

  attr_accessible :city, :country, :state, :street, :zip

  validates_presence_of :street, :city, :state, :zip, :country
end
