require_relative "repo.rb"
require_relative "model.rb"


class View

  def display_tasks(tasks)
    # if tasks.length > 1
      tasks.each_with_index do |task, index|
        status = nil
        task.status ? status = "[X]" : status = "[]"
        puts "#{index + 1} - #{task.name} #{status} "
      end
    # else
    #   puts "No task existing in the list"
    # end
  end

  def ask_user_description
    puts "What task do you want to add"
    print "> "
    return gets.chomp
  end

  def ask_delete_index
    puts "What task # do you want to delete"
    print "> "
    return gets.chomp
  end

  def mark_completed
    puts "What task # do you want to mark as completed"
    print "> "
    return gets.chomp
  end

end
