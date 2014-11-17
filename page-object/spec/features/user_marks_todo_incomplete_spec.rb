require "spec_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo_titled "Buy milk"
    complete_todo_titled "Buy milk"

    mark_incomplete_todo_titled "Buy milk"

    expect(page).not_to display_completed_todo_titled "Buy milk"
    expect(page).to display_todo_titled "Buy milk"
  end
end
