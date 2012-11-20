#coding: utf-8
require 'spec_helper'

feature "Signing up" do
  scenario "register" do
    visit new_user_registration_path
    page.should have_content "Sign up"
  end
end
