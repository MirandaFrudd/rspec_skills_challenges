# DESCRIBE THE PROBLEM
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

# DESIGN THE CLASS INTERFACE
class TaskTracker
def initialize
# creates and stores the task list
end

def add
# adds each task to a list
end

def view_tasks
# displays all of the tasks that have been added to the list
end

end

# CREATE EXAMPLE TESTS

# 1 - when a task is added with the word 'todo', it is added to the task list and can be displayed using #view_tasks
task = Task.new
task.add("todo: walk the dog")
task.view_tasks # => "todo: walk the dog"

# 2 - when a task is added without the word 'todo', it is not added to the task list and can be displayed using #view_tasks
task = Task.new
task.add("walk the dog")
task.view_tasks # =>  nil

# 3 - when no tasks have been added and #view_tasks is called - the message "you have no tasks' is displayed
task = Task.new
task.view_tasks # => "you have no tasks"

# 4 - when a task is added with the word 'TODO', it is added to the task list and can be displayed in lower case format using #view_tasks
task = Task.new
task.add("TODO: walk the dog")
task.view_tasks # => "todo: walk the dog"

# 5 - when more than one task is added with the word 'TODO', both added to the task list and can be displayed in lower case format using #view_tasks
task = Task.new
task.add("TODO: walk the dog")
task.add("todo: clean the kitchen")
task.view_tasks # => "todo: walk the dog\n todo: clean the kitchen"