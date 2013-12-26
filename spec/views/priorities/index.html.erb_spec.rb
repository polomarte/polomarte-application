require 'spec_helper'

describe "priorities/index" do
  before(:each) do
    assign(:priorities, [
      stub_model(Priority,
        :name => "Name"
      ),
      stub_model(Priority,
        :name => "Name"
      )
    ])
  end

  it "renders a list of priorities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
