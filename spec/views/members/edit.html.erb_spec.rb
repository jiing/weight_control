require 'spec_helper'

describe "members/edit.html.erb" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :name => "MyString",
      :goal_weight => 1.5,
      :current_weight => 1.5,
      :height => 1.5
    ))
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path(@member), :method => "post" do
      assert_select "input#member_name", :name => "member[name]"
      assert_select "input#member_goal_weight", :name => "member[goal_weight]"
      assert_select "input#member_current_weight", :name => "member[current_weight]"
      assert_select "input#member_height", :name => "member[height]"
    end
  end
end
