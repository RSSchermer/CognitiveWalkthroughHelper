require 'spec_helper'

describe "walkthroughs/index" do
  before(:each) do
    assign(:walkthroughs, [
      stub_model(Walkthrough,
        :description => "Description"
      ),
      stub_model(Walkthrough,
        :description => "Description"
      )
    ])
  end

  it "renders a list of walkthroughs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
