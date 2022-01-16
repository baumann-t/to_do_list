
class Repository
  def initialize()
    @tasks_list = []
  end

  def add(task)
    @tasks_list << task
  end

  def all()
    @tasks_list
  end

  def delete(task)
    @tasks_list.delete_at(task)
  end

  def find(index)
    @tasks_list[index]
  end
end
