
require "csv"

FILEPATH = "./task_list.csv"

class Repository
  def initialize()
    @tasks_list = []

    if File.exist?(FILEPATH)
      CSV.foreach(FILEPATH) do |row|
        status = false
        if row[1] == "true"
          status = true
        end
        task = Task.new(row[0], status)
        @tasks_list << task
      end
    else
      @tasks_list
    end
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

  def store_data
    CSV.open(FILEPATH, "wb") do |csv|
      @tasks_list.each { |task| csv << [task.name, task.status] }
    end
  end
end
