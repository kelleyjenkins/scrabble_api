require 'rails_helper'

describe "user validates word" do
  it "enters a word and returns message" do
    visit '/'

      fill_in(:search, :with => "foxes")
      click_on "Validate Word"

    expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'")
  end

  it "enters a word that is not valid and returns message" do
    visit '/'

    fill_in(:search, :with => "foxez")
    click_on "Validate Word"

    expect(page).to have_content("'foxez' is not a valid word")
  end
end
