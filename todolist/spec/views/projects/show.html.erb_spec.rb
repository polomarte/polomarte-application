require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :index => "Index",
      :show => "Show",
      :new => "New",
      :edit => "Edit",
      :create => "Create",
      :update => "Update",
      :destroy => "Destroy"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    rendered.should match(/Show/)
    rendered.should match(/New/)
    rendered.should match(/Edit/)
    rendered.should match(/Create/)
    rendered.should match(/Update/)
    rendered.should match(/Destroy/)
  end
end
