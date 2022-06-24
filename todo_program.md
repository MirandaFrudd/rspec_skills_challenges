# DESCRRIBE THE PROBLEM
The user can store tasks in Todo. Tasks are a string
The user can mark tasks as done
The user can check if they have done a task

Tasks are stored in a todo list
The user can list all the incomplete tasks in the todo list
The user can return all of the complete tasks in a todo list
The user can mark all incomplete tasks in a todo list as complete

# DESIGN THE CLASS INTERFACE
Done

# CREATE EXAMPLES AS TESTS
todo_spec:
task("take the dog for a walk") => "take the dog for a walk"
done?(task.mark_done!) => true

Integration:
# 1 - gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]

# 1 - return all non-complete tasks in the todo list
todo_list = TodoList.new
task1 = Todo.new("walk the dog")
task2 = Todo.new("do the washing up")
task3 = Todo.new("make your bed")
task2.mark_done!
todo_list.incomplete => walk the dog\n make your bed

# 2 - return all complete tasks in the todo list
todo_list = TodoList.new
task1 = Todo.new("walk the dog")
task2 = Todo.new("do the washing up")
task1.mark_done!
todo_list.incomplete => walk the dog

# 3 - mark all non-complete items in the to-do list as complete and return complete items
todo_list = TodoList.new
task1 = Todo.new("walk the dog")
task2 = Todo.new("do the washing up")
task3 = Todo.new("make your bed")
todo_list.give_up!
todo_list.complete => walk the dog\n do the washing up\n make your bed\n

# 4 - fail if no items have been completed when complete is run
todo_list = TodoList.new
task1 = Todo.new("walk the dog")
task2 = Todo.new("do the washing up")
task3 = Todo.new("make your bed")
todo_list.complete => There are no complete items in your todo list.

# 5 - fail if all items have been completed when incomplete runs
todo_list = TodoList.new
task1 = Todo.new("walk the dog")
task2 = Todo.new("do the washing up")
task3 = Todo.new("make your bed")
todo_list.give_up!
todo_list.incomplete => There are no incomplete items in your todo list.
