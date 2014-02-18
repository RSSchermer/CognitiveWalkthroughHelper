require 'spec_helper'

describe "walkthroughs/new" do
  before(:each) do
    assign(:walkthrough, stub_model(Walkthrough,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new walkthrough form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", walkthroughs_path, "post" do
      assert_select "input#walkthrough_description[name=?]", "walkthrough[description]"
    end
  end
end
