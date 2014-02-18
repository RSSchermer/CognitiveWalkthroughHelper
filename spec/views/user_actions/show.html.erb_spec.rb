require 'spec_helper'

describe "user_actions/show" do
  before(:each) do
    @user_action = assign(:user_action, stub_model(UserAction,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/System Response Description/)
    rendered.should match(/false/)
    rendered.should match(/Question One Explanation/)
    rendered.should match(/false/)
    rendered.should match(/Question Two Explanation/)
    rendered.should match(/false/)
    rendered.should match(/Question Three Explanation/)
    rendered.should match(/false/)
    rendered.should match(/Question Four Explanation/)
    rendered.should match(/Additional Explanation/)
  end
end
