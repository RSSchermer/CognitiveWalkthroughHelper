require 'spec_helper'

describe "walkthroughs/show" do
  before(:each) do
    @walkthrough = assign(:walkthrough, stub_model(Walkthrough,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
