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


describe Project, "with tasks" do

  before do
    #setup
    @project = Project.new

    #exercise
    @project.name = "Project 01"
    @project.save!
    task = Task.new
    task.description= "Run"
    task.finalized = true
    task.project = @project
    task.save!
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

  it 'it calculates the percentage of completion' do
    Task.create!({project_id: @project.id, description: "Save the world"})
    Task.create!({project_id: @project.id, description: "Tying shoes", finalized: true})

    expect(@project.tasks.size).to eq(3)
    #two of three tasks are finalized
    expect(@project.percentage.to_s).to eq("66.66666666666666")
  end
end

