class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
        @todo_list << todo
    end
  
    def incomplete
        tasks = ""
        incomplete_tasks = @todo_list.each do |item| 
            unless item.done? 
                tasks += item.task + "\n"
            end
        end
        fail "There are no incomplete items in your todo list." if tasks == ""
        return tasks
    end
  
    def complete
      # Returns all complete todos
      tasks = ""
      complete_tasks = @todo_list.each do |item|
            if item.done?
                tasks += item.task + "\n"
            end
        end
        fail "There are no complete items in your todo list" if tasks == ""
        return tasks
    end
  
    def give_up!
      # Marks all todos as complete
        @todo_list.each { |item| item.mark_done! }
    end
  end