require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "is not valid without an name" do
    post = Strain.create(name: "Some name")
    expect(strain).to_not be_valid
    end
end
