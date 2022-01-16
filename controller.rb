# Controller manages all user interactions
require_relative "repo.rb"
require_relative "model.rb"


class Controller
  def initialize(repo, view)
    @repo = repo
    @view = view
  end

  #CRUD
  def create()
    task_name = @view.ask_user_description
    task = Task.new(task_name)
    @repo.add(task)
  end

  def display()
    @view.display_tasks(@repo.all)
  end

  def delete_task
    task = @view.ask_delete_index
    @repo.delete(task.to_i)
  end

  def mark_completed()
    task = @view.mark_completed
    @repo.find(task.to_i - 1).change_status
  end

end
