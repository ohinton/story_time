require 'rails_helper'

describe "the view stories process" do
  it "lists the stories on the index page" do
    story = Story.create({:title => "Test Title"})
    visit stories_path
    expect(page).to have_content 'Test Title'
  end
end
