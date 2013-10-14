require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :index => "Index",
      :new => "New",
      :create => "Create",
      :update => "Update",
      :edit => "Edit",
      :destroy => "Destroy",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    rendered.should match(/New/)
    rendered.should match(/Create/)
    rendered.should match(/Update/)
    rendered.should match(/Edit/)
    rendered.should match(/Destroy/)
    rendered.should match(/Show/)
  end
end
