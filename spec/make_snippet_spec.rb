# A method called make_snippet that takes a string as an argument 
# returns the first five words and then a '...' if there are more than that.

require 'make_snippet'

RSpec.describe "make_snippet test" do
    it "returns the word if 5 letters or under" do
        result = make_snippet("hello")
        expect(result).to eq "hello"
    end

    it "returns the first 5 letters then ... if more than 5 long" do
        result = make_snippet("Miranda")
        expect(result).to eq "Miran..."
    end
end
