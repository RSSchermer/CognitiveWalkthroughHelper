require 'spec_helper'

describe "user_actions/index" do
  before(:each) do
    assign(:user_actions, [
      stub_model(UserAction,
        :task_id => 1,
        :description => "Description",
        :system_response_description => "System Response Description",
        :question_one_is_true => false,
        :question_one_explanation => "Question One Explanation",
        :question_two_is_true => false,
        :question_two_explanation => "Question Two Explanation",
        :question_three_is_true => false,
        :question_three_explanation => "Question Three Explanation",
        :question_four_is_true => false,
        :question_four_explanation => "Question Four Explanation",
        :additional_explanation => "Additional Explanation"
      ),
      stub_model(UserAction,
        :task_id => 1,
        :description => "Description",
        :system_response_description => "System Response Description",
        :question_one_is_true => false,
        :question_one_explanation => "Question One Explanation",
        :question_two_is_true => false,
        :question_two_explanation => "Question Two Explanation",
        :question_three_is_true => false,
        :question_three_explanation => "Question Three Explanation",
        :question_four_is_true => false,
        :question_four_explanation => "Question Four Explanation",
        :additional_explanation => "Additional Explanation"
      )
    ])
  end

  it "renders a list of user_actions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "System Response Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Question One Explanation".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Question Two Explanation".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Question Three Explanation".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Question Four Explanation".to_s, :count => 2
    assert_select "tr>td", :text => "Additional Explanation".to_s, :count => 2
  end
end
