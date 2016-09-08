require 'rails_helper'

describe "the edit a story process" do
  it "edits a story" do
    story = Story.create({:title => "Test Title"})
    visit story_path(story)
    click_link "edit this story"
    fill_in 'Title', :with => "New Title"
    click_on 'Update Story'
    expect(page).to have_content 'Stories'
  end
end
