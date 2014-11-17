class TodosController < ApplicationController
  def index
    @todos = todos.all
  end

  def new
    @todo = todos.new
  end

  def create
    todos.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def todos
    current_user.todos
  end
end
