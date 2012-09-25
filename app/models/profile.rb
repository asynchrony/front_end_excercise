class Profile < ActiveRecord::Base

  attr_accessible :first_name, :last_name, :email, :gender, :income, :date_of_birth, :location_attributes, :location

  validates_presence_of :first_name
  validates_presence_of :last_name

  has_one :location
  accepts_nested_attributes_for :location

end
