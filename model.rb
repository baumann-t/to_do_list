# Model must represent an element through a class

class Task
  attr_reader :name
  attr_reader :status

  def initialize (name)
    @name = name
    @status = false
  end

  def change_status
    @status = true
  end
end
