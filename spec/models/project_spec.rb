require 'spec_helper'

describe Project do
  it "can be instantiated" do
    expect(Project.new).to be_an_instance_of Project
  end

  it 'can be saved successfully' do
    expect(Project.create).to be_persisted
  end

end
