require 'grammar_stats'

RSpec.describe GrammarStats do
    context "when we pass a string to #check" do
        it "fails with an empty string" do
            grammar = GrammarStats.new
            expect{ grammar.check("") }.to raise_error "No text provided"
        end

        it "returns true if string begins with capital letter" do
            grammar = GrammarStats.new
            result = grammar.check("Hello Ollie.")
            expect(result).to eq true
        end

        it "returns false if string does not begin with capital letter" do
            grammar = GrammarStats.new
            result = grammar.check("hello Miranda.")
            expect(result).to eq false
        end

        it "returns true if string ends with punctuation mark" do
            grammar = GrammarStats.new
            result = grammar.check("Hello Ollie.")
            expect(result).to eq true
        end

        it "returns false if string does not end with punctuation mark" do
            grammar = GrammarStats.new
            result = grammar.check("Hello Ollie")
            expect(result).to eq false
        end
    end

    it "returns the percentage of true results when a mix of valid and invalid strings have been checked" do
        grammar = GrammarStats.new
        grammar.check("Hello Miranda.")
        grammar.check("Hello Miranda.")
        grammar.check("hello Miranda.")
        grammar.check("hello Miranda.")
        result = grammar.percentage_good
        expect(result).to eq 50
    end
end