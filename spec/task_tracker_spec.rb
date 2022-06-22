require 'task_tracker'

RSpec.describe "task_tracker" do
    it "returns true if str includes #TODO" do
    result = task_tracker("#TODO: something")

    expect(result).to eq true
    end

    it "returns true if str includes #TODO" do
    result = task_tracker("I need #TODO something")

    expect(result).to eq true
    end

    it "returns false if strdoes not include #TODO" do
    result = task_tracker("I need #todo something")

    expect(result).to eq false
    end

    it "returns false if strdoes not include #TODO" do
    result = task_tracker("this is a task")

    expect(result).to eq false
    end

    it "returns false if strdoes not include #TODO" do
    result = task_tracker("TODO: something")

    expect(result).to eq false
    end
end
