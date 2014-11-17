module Features
  def create_todo_titled(title)
    click_on t("todos.index.create_todo")
    fill_in t("simple_form.labels.todos.title"), with: title
    click_on t("helpers.submit.todo.create")
  end

  def complete_todo_titled(title)
    find(".todo", text: title).click_on t("todos.index.complete_todo")
  end

  def mark_incomplete_todo_titled(title)
    find(".todo", text: title).click_on t("todos.index.incomplete_todo")
  end

  def display_completed_todo_titled(title)
    have_css ".todo.completed", text: title
  end

  def display_todo_titled(title)
    have_css ".todo", text: title
  end
end
