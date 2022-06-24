require 'todo'
require 'todo_list'


RSpec.describe "Integration of #Todo and #TodoList Classes" do
    context "todo list combines the individual todo items" do
        it "returns all the non-complete tasks in the todo list" do
            todo_list = TodoList.new
            task1 = Todo.new("walk the dog")
            task2 = Todo.new("do the washing up")
            task3 = Todo.new("make your bed")
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            task2.mark_done!
            expect(todo_list.incomplete).to eq "walk the dog\nmake your bed\n"
        end

        it "returns all the complete tasks in the todo list" do
            todo_list = TodoList.new
            task1 = Todo.new("walk the dog")
            task2 = Todo.new("do the washing up")
            task3 = Todo.new("make your bed")
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            task2.mark_done!
            task3.mark_done!
            expect(todo_list.complete).to eq "do the washing up\nmake your bed\n"
        end

        it "mark all non-complete items in the to-do list as complete and return complete items" do
            todo_list = TodoList.new
            task1 = Todo.new("walk the dog")
            task2 = Todo.new("do the washing up")
            task3 = Todo.new("make your bed")
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            todo_list.give_up!
            expect(todo_list.complete).to eq "walk the dog\ndo the washing up\nmake your bed\n"
        end
    end

    context "returns for empty lists" do
        it "fails if no items have been completed when complete is run" do
            todo_list = TodoList.new
            task1 = Todo.new("walk the dog")
            task2 = Todo.new("do the washing up")
            task3 = Todo.new("make your bed")
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            expect{todo_list.complete}.to raise_error "There are no complete items in your todo list"
        end

        it "fails if all items have been completed when incomplete is run" do
            todo_list = TodoList.new
            task1 = Todo.new("walk the dog")
            task2 = Todo.new("do the washing up")
            task3 = Todo.new("make your bed")
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            todo_list.give_up!
            expect{todo_list.incomplete}.to raise_error "There are no incomplete items in your todo list."
        end
    end
    
end

