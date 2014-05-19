require 'spec_helper'

describe "Gist pages" do
  subject { page }

  describe "index" do
    before do
      FactoryGirl.create(:gist, name: "FirstGist")
      FactoryGirl.create(:gist, name: "SecondGist")
      visit gists_path
    end

    it { should have_title('GistMail') }

    it "should list each gist" do
      Gist.all.each do |gist|
        expect(page).to have_selector('li', text: gist.name)
      end
    end
  end
end
