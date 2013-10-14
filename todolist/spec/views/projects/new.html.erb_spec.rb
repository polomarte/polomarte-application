require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :index => "MyString",
      :show => "MyString",
      :new => "MyString",
      :edit => "MyString",
      :create => "MyString",
      :update => "MyString",
      :destroy => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_index[name=?]", "project[index]"
      assert_select "input#project_show[name=?]", "project[show]"
      assert_select "input#project_new[name=?]", "project[new]"
      assert_select "input#project_edit[name=?]", "project[edit]"
      assert_select "input#project_create[name=?]", "project[create]"
      assert_select "input#project_update[name=?]", "project[update]"
      assert_select "input#project_destroy[name=?]", "project[destroy]"
    end
  end
end
