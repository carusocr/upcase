require "spec_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    create_todo_titled "Buy milk"

    complete_todo_titled "Buy milk"

    expect(page).to display_completed_todo_titled "Buy milk"
  end
end
