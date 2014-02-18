require 'spec_helper'

describe "walkthroughs/edit" do
  before(:each) do
    @walkthrough = assign(:walkthrough, stub_model(Walkthrough,
      :description => "MyString"
    ))
  end

  it "renders the edit walkthrough form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", walkthrough_path(@walkthrough), "post" do
      assert_select "input#walkthrough_description[name=?]", "walkthrough[description]"
    end
  end
end
