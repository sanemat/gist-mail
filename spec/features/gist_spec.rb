# coding: utf-8
require 'spec_helper'

feature "Gist" do
  let(:gist) { FactoryGirl.build(:gist) }
  scenario "add gist" do
    visit root_path
    # gist が無いこと

    # gist投稿
    fill_in 'Name', with: gist.name
    fill_in 'Url', with: gist.url
    fill_in 'Point', with: gist.count
    click_button 'Create Gist'

    # 投稿完了
    click_link 'Back'

    # 一覧表示
    page.should have_content gist.name
    page.should have_content gist.url
    page.should have_content gist.count
  end
end
