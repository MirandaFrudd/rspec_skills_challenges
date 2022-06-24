class Todo
    def initialize(task) # task is a string
       # @task = {"task" => task, "status" => "incomplete"}
       @task = task
       @status = false
    end
  
    def task
      # Returns the task as a string
      #return @task["task"]
      return @task
    end
  
    def mark_done!
      #@task["status"] = "complete"
      @status = true
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
    #   if @task['status'] == 'complete'
    #     return true
    #   else
    #     return false
    #   end

        @status == true
    end
  end