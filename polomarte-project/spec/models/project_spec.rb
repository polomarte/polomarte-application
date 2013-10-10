#encoding: utf-8
require 'spec_helper'

describe Project do

  before(:each) do
    @project = Project.new
  end

  it "should not be finalized" do
    @project.should_not be_finalized
  end

  it "should have name" do
    @project = Project.create(:name => 'Project 01')
    @project.name.should eql("Project 01")
  end

  it "should be finalized" do
    @project = Project.create(:name => 'Project 01', :finalized => true)
    @project.should be_finalized
  end

  #project without name
  it "should not be valid" do
    @project.finalized = true
    @project.should_not be_valid
    @project.errors[:name].count.should == 1
    @project.errors[:name].first.should eql(I18n.t("errors.messages.empty"))
  end

  it 'has many tasks' do
    @project.should respond_to :tasks
  end

end
