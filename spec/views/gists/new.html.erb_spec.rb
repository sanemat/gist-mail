require 'spec_helper'

describe "gists/new" do
  before(:each) do
    assign(:gist, stub_model(Gist,
      :name => "MyString",
      :url => "MyString",
      :count => 1
    ).as_new_record)
  end

  it "renders new gist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gists_path, :method => "post" do
      assert_select "input#gist_name", :name => "gist[name]"
      assert_select "input#gist_url", :name => "gist[url]"
      assert_select "input#gist_count", :name => "gist[count]"
    end
  end
end
