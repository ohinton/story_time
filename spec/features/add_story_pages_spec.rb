require 'rails_helper'

describe "the add a story process" do
  it "adds a new story" do
    visit stories_path
    click_link 'Add a new story'
    fill_in 'Title', :with => 'Test Title'
    click_on 'Create Story'
    expect(page).to have_content 'Stories'
  end

  it "gives error when no title is entered" do
    visit new_story_path
    click_on 'Create Story'
    expect(page).to have_content 'errors'
  end
end
