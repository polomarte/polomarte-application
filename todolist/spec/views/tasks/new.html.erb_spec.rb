require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :index => "MyString",
      :new => "MyString",
      :create => "MyString",
      :update => "MyString",
      :edit => "MyString",
      :destroy => "MyString",
      :show => "MyString"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_index[name=?]", "task[index]"
      assert_select "input#task_new[name=?]", "task[new]"
      assert_select "input#task_create[name=?]", "task[create]"
      assert_select "input#task_update[name=?]", "task[update]"
      assert_select "input#task_edit[name=?]", "task[edit]"
      assert_select "input#task_destroy[name=?]", "task[destroy]"
      assert_select "input#task_show[name=?]", "task[show]"
    end
  end
end
