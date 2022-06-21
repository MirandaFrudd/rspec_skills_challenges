# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

# Returns the num of words per min. 
# 200 words per min
# 200 / 60 = words per sec
# num words / words per sec = num seconds

require 'time_management'

RSpec.describe "time_management method" do
    it "return the ammount of time it takes to read a str" do
        result = time_management("This is a really short string")
        expect(result).to eq "2 seconds"
    end

    it "return the ammount of time it takes to read a str" do
        result = time_management("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nunc risus, lacinia id vestibulum sit amet, tincidunt in leo. Donec eu dui vel neque bibendum pulvinar. Vivamus suscipit est sit amet lobortis elementum. Cras placerat, augue sit amet gravida scelerisque, sapien ipsum dignissim nisl, et cursus eros neque consequat tortor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris suscipit imperdiet lacinia. Pellentesque euismod elit nec tincidunt placerat. Nullam sollicitudin sem ac erat lobortis suscipit. Etiam feugiat turpis vitae neque consequat faucibus et vel risus. Vestibulum lacinia quis nulla nec ornare. Pellentesque fermentum ex sit amet.")
        expect(result).to eq "33 seconds"
    end

    it "return the ammount of time it takes to read a str" do
        result = time_management("This is a slightly longer string, but still not very long")
        expect(result).to eq "3 seconds"
    end

    it "return 0 seconds for a string with one word" do
        result = time_management("Hi")
        expect(result).to eq "0 seconds"
    end

    # it "counts the number of words in a string" do
    #     result = time_management("This is a really short string")
    #     expect(result).to eq 6
    # end
end
