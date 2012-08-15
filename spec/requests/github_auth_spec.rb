require 'spec_helper'

describe "logging in with github" do
  it "should be successful" do
    visit root_path
    click_link 'Login with Github'
    expect(page).to have_content 'Logged in Successfully'
  end
end
