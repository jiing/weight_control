require 'spec_helper'

describe "weights/show.html.erb" do
  before(:each) do
    @weight = assign(:weight, stub_model(Weight,
      :name => "Name",
      :weight_today => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
