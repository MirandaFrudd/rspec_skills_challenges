require 'task_tracker'

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

RSpec.describe "task_tracker method" do
    it "return true if str includes TODO" do
        result = task_tracker("TODO: a task")
        expect(result).to eq true
    end

    it "return true if str includes TODO" do
        result = task_tracker("I need TODO a task")
        expect(result).to eq true
    end

    it "return false if str does not include TODO" do
        result = task_tracker("a task")
        expect(result).to eq false
    end

    it "return false if str does not include TODO" do
        result = task_tracker("todo a task")
        expect(result).to eq false
    end

end
