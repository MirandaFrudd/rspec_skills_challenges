# task("take the dog for a walk") => "take the dog for a walk"
# done?(task.mark_done!) => true

require 'todo'

RSpec.describe Todo do
    it "returns the task as a string" do
        my_task = Todo.new("take the dog for a walk")
        result = my_task.task
        expect(result).to eq "take the dog for a walk"
    end

    it "returns true if the task is marked as done" do
        my_task = Todo.new("take the dog for a walk")
        my_task.mark_done!
        result = my_task.done?
        expect(result).to eq true
    end

    it "returns false if the task is marked as done" do
        my_task = Todo.new("take the dog for a walk")
        result = my_task.done?
        expect(result).to eq false
    end
end