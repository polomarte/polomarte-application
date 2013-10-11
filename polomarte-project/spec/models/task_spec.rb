require 'spec_helper'

describe Task do
  before(:each) do
    @task = Task.new
  end

  it "should not be finalized" do
    @task.should_not be_finalized
  end

  it "should have description" do
    @task = Task.create(:description => 'Run')
    @task.description.should eql("Run")
  end

  it "should be finalized" do
    @task = Task.create(:description => 'Run', :finalized => true)
    @task.should be_finalized
  end

  #task without description
  it "should not be valid" do
    @task.should_not be_valid
    expect(@task.errors.count).to eq(2)
    @task.errors[:description].count.should == 1
    @task.errors[:description].first.should eql(I18n.t("errors.messages.empty"))
    @task.errors[:project_id].count.should == 1
    @task.errors[:project_id].first.should eql(I18n.t("errors.messages.empty"))
  end

  it 'belongs to a project' do
    @task.should respond_to :project
  end

end
