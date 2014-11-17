require "spec_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo_titled "Buy milk"

    expect(page).to display_todo_titled "Buy milk"
  end

  scenario "which cannot be seen by a different user" do
    sign_in
    create_todo_titled "Buy milk"

    sign_in_as "different@example.com"

    expect(page).not_to display_todo_titled "Buy milk"
  end
end
