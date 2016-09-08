require 'rails_helper'

describe "the delete a story process" do
  it "deletes a story from db" do
    story = Story.create({:title => "Test Title"})
    visit story_path(story)
    click_link "delete this story"
    expect(page).to have_content 'Stories'
  end
end
