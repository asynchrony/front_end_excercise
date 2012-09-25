require 'spec_helper'

describe Location do
  it { should belong_to(:profile) }

  it "saves model" do
    location = Location.new(street: "Any street", city: "Wildwood", state: "MO", zip: "63038", country: "USA")
    location.save.should == true
  end
end
