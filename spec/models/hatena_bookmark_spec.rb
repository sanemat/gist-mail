# coding: utf-8
require 'spec_helper'

describe HatenaBookmark do
  before do
    @hatena = HatenaBookmark.new
  end

  describe "#get_today_gist" do
    it "今日はてブされたgistのURLとはてブ総数を返すこと" do
      @hatena.get_today_gist.should == []
    end
  end
end
