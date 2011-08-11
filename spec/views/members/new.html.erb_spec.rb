require 'spec_helper'

describe "members/new.html.erb" do
  before(:each) do
    assign(:member, stub_model(Member,
      :name => "MyString",
      :goal_weight => 1.5,
      :current_weight => 1.5,
      :height => 1.5
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path, :method => "post" do
      assert_select "input#member_name", :name => "member[name]"
      assert_select "input#member_goal_weight", :name => "member[goal_weight]"
      assert_select "input#member_current_weight", :name => "member[current_weight]"
      assert_select "input#member_height", :name => "member[height]"
    end
  end
end
