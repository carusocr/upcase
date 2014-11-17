class CompletionsController < ApplicationController
  def create
    todos.find(params[:todo_id]).update_attribute :completed_at, Time.current
    redirect_to todos_path
  end

  def destroy
    todos.find(params[:todo_id]).update_attribute :completed_at, nil
    redirect_to todos_path
  end

  private

  def todos
    current_user.todos
  end
end
