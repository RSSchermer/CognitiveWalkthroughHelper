require 'spec_helper'

describe "user_actions/edit" do
  before(:each) do
    @user_action = assign(:user_action, stub_model(UserAction,
      :task_id => 1,
      :description => "MyString",
      :system_response_description => "MyString",
      :question_one_is_true => false,
      :question_one_explanation => "MyString",
      :question_two_is_true => false,
      :question_two_explanation => "MyString",
      :question_three_is_true => false,
      :question_three_explanation => "MyString",
      :question_four_is_true => false,
      :question_four_explanation => "MyString",
      :additional_explanation => "MyString"
    ))
  end

  it "renders the edit user_action form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_action_path(@user_action), "post" do
      assert_select "input#user_action_task_id[name=?]", "user_action[task_id]"
      assert_select "input#user_action_description[name=?]", "user_action[description]"
      assert_select "input#user_action_system_response_description[name=?]", "user_action[system_response_description]"
      assert_select "input#user_action_question_one_is_true[name=?]", "user_action[question_one_is_true]"
      assert_select "input#user_action_question_one_explanation[name=?]", "user_action[question_one_explanation]"
      assert_select "input#user_action_question_two_is_true[name=?]", "user_action[question_two_is_true]"
      assert_select "input#user_action_question_two_explanation[name=?]", "user_action[question_two_explanation]"
      assert_select "input#user_action_question_three_is_true[name=?]", "user_action[question_three_is_true]"
      assert_select "input#user_action_question_three_explanation[name=?]", "user_action[question_three_explanation]"
      assert_select "input#user_action_question_four_is_true[name=?]", "user_action[question_four_is_true]"
      assert_select "input#user_action_question_four_explanation[name=?]", "user_action[question_four_explanation]"
      assert_select "input#user_action_additional_explanation[name=?]", "user_action[additional_explanation]"
    end
  end
end
