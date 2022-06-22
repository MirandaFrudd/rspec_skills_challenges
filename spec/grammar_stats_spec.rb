require 'grammar_stats'

RSpec.describe GrammarStats do
    it "fails when we pass check an empty string" do
        grammar = GrammarStats.new
        expect{ grammar.check("") }.to raise_error "No text provided"
    end
end