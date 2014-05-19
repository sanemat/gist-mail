# coding: utf-8
require 'spec_helper'

feature "Gist" do
  let(:gist) { FactoryGirl.build(:gist) }
  scenario "add gist" do
    visit root_path
    # gist が無いこと

    # gist投稿
    fill_in 'gist_name', with: gist.name
    fill_in 'gist_url', with: gist.url
    click_button 'Gistを追加'

    # 投稿完了
    click_link 'Back'

    # 一覧表示
    page.should have_link(gist.name, href: gist.url)
  end
end
