require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :description => "MyString",
      :walkthrough_id => 1
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_description[name=?]", "task[description]"
      assert_select "input#task_walkthrough_id[name=?]", "task[walkthrough_id]"
    end
  end
end
