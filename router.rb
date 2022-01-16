require_relative "model.rb"
require_relative "repo.rb"
require_relative "controller.rb"
require_relative "view.rb"

repo = Repository.new
view = View.new

controller = Controller.new(repo,view)


loop do
  puts " "
  puts "What do you want to do?"
  puts "Type 1 to view list of tasks / Type 2 to add a task / Type 3 to mark a task as complete / Type 4 to delete a task "
  puts " "

  choice = gets.chomp.to_i

  case choice
    when 1
      controller.display
    when 2
      controller.create
    when 3
      controller.mark_completed
    when 4
      controller.delete_task
    when 5
      break
    else
      puts 'incorrect input'
  end

end
