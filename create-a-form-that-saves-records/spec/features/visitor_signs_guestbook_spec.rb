require "rails_helper"

feature "A visitor signs the guestbook" do
  scenario "and sees their entry on the welcome page" do
    visit root_path
    fill_in "Guestbook Entry:", with: "Hey! Awesome site."
    click_button "Submit"

    expect(page).to have_content "Thank you for your entry."
  end
end
