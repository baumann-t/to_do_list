# Model must represent an element through a class

class Task
  attr_reader :name
  attr_reader :status

  def initialize (name, status)
    @name = name
    @status = status
  end

  def change_status
    @status = true
  end
end
