# A method called count_words that takes a string as an argument 
# returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words method" do
    it "returns the number of words in a string" do
        result = count_words("hello, my name is Miranda")
        expect(result).to eq 5
    end
    it "returns nil if string is empty" do
        result = count_words(" ")
        expect(result).to eq nil
    end
end
