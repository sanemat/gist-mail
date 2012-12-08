require 'spec_helper'

describe Gist do
  context "add gist name is null" do
    before do
      @gist = FactoryGirl.build(:gist, :name => nil)
    end

    it "should not be valid" do
      @gist.should_not be_valid
    end
  end

  context "add gist url is null" do
    before do
      @gist = FactoryGirl.build(:gist, :url => nil)
    end

    it "should not be valid" do
      @gist.should_not be_valid
    end
  end

  context "add gist count is null" do
    before do
      @gist = FactoryGirl.build(:gist, :count => nil)
    end

    it "should not be valid" do
      @gist.should_not be_valid
    end
  end
end
