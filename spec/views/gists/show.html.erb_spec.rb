require 'spec_helper'

describe "gists/show" do
  before(:each) do
    @gist = assign(:gist, stub_model(Gist,
      :name => "Name",
      :url => "Url",
      :count => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/1/)
  end
end
