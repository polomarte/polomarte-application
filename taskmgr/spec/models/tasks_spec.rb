require "spec_helper"

describe Task do

  context "validations" do
    it { should validate_presence_of(:name)}
    it { should allow_value(true).for(:finished) }
    it { should allow_value(false).for(:finished) }
    it { should_not allow_value(nil).for(:finished) }
  end

  context "associations" do
    it { should belong_to(:project)}
  end

end
