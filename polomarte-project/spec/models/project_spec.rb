#encoding: utf-8
require 'spec_helper'

describe Project do

  before do
    @project = Project.new
  end

  it "should not be finalized" do
    @project = Project.create(:name => 'Project 01')

    expect(@project).to_not be_finalized
  end


  it "should have name" do
    @project = Project.create(:name => 'Project 01')

    expect(@project.name).to eql("Project 01")
  end

  #project without name
  it "should not be valid" do
    expect(@project).to_not be_valid
    expect(@project.errors[:name].count).to eql(1)
    expect(@project.errors[:name].first).to eql(I18n.t("errors.messages.empty"))
  end

  it 'has many tasks' do
    @project.should respond_to :tasks
  end

  it 'should have open status' do
    @project = Project.create(:name => 'Project 01')

    expect(@project.status).to eql(I18n.t("activerecord.attributes.project.open"))
  end
end


describe Project, "projects with tasks" do

  before do
    #setup
    @project = Project.new
    task = Task.new

    #exercise
    task.description= "Run"
    task.finalized = true
    @project.tasks << task
    @project.name = "Project 01"
  end

  it 'should have finalized status' do
    expect(@project.status).to eql(I18n.t("activerecord.attributes.project.finalized"))
  end

  it "should be finalized" do
    expect(@project).to be_finalized
  end

  it 'should have tasks' do
    expect(@project.tasks.size).to eq(1)
    expect(@project.tasks.first.description).to eql("Run")
  end
end

