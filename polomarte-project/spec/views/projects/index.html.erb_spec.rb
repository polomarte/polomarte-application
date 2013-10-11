require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
        stub_model(Project,
                   :name => "Name",
                   :finalized => false
        ),
        stub_model(Project,
                   :name => "Name",
                   :finalized => false
        )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => I18n.t("activerecord.attributes.project.open").to_s, :count => 2
  end
end
