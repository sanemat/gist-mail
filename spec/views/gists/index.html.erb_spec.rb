#coding: utf-8
require 'spec_helper'

describe "gists/index" do
  before(:each) do
    assign(:gists, [
      stub_model(Gist,
        :name => "Name",
        :url => "Url",
        :count => 1
      ),
      stub_model(Gist,
        :name => "Name",
        :url => "Url",
        :count => 1
      )
    ])
  end

  it "はGistを一覧表示すること" do
    @new_gist = Gist.new
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
