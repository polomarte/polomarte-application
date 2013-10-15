require 'spec_helper'

describe Task do
  before(:each) do
    @task = Task.new
  end

  it "should not be finalized" do
    expect(@task).to_not be_finalized
  end

  it "should have description" do
    @task = Task.create(:description => 'Run')

    @task.description.should eql("Run")
  end

  it "should be finalized" do
    @task = Task.create(:description => 'Run', :finalized => true)

    expect(@task).to be_finalized
  end

  #task without a project
  it "should not be valid without a project" do
    @task.description= "Run"

    expect(@task).to_not be_valid
    expect(@task.errors.count).to eq(1)
    expect(@task.errors[:project_id].count).to eql(1)
    expect(@task.errors[:project_id].first).to eql(I18n.t("errors.messages.empty"))
  end

  it 'belongs to a project' do
    @task.should respond_to :project
  end

  it 'should have open status' do
    @task = Task.create(:description => 'Project 01')

    expect(@task.status).to eql(I18n.t("activerecord.attributes.task.open"))
  end

  it 'should have finalized status' do
    @task = Task.create(:description => 'Project 01', :finalized => true)

    expect(@task.status).to eql(I18n.t("activerecord.attributes.task.finalized"))
  end

end

describe Task, "task with project" do

  before do
    @task = Task.new
    project = Project.new

    project.name = "Project 01"
    project.id = 1
    @task.project = project
  end

  #task without description
  it "should not be valid without a description" do
    expect(@task).to_not be_valid
    expect(@task.errors.count).to eq(1)
    expect(@task.errors[:description].count).to eql(1)
    expect(@task.errors[:description].first).to eql(I18n.t("errors.messages.empty"))
  end

end

