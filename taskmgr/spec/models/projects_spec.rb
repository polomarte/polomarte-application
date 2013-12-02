require "spec_helper"

describe Project do

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:status) }
    it { should ensure_inclusion_of(:status).in_array(%w(inProgress finished)) }
  end

  context "associations" do
    it { should have_many(:tasks).dependent(:destroy) }
  end
end
