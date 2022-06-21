# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter 
# ends with a suitable sentence-ending punctuation mark.

require 'improve_grammar'

RSpec.describe 'improve_grammar method' do
    it 'checks that text starts with a capital letter' do
        result = improve_grammar("This is a correct sentence.")
        expect(result).to eq true
    end

    it 'checks that text starts with a capital letter' do
        result = improve_grammar("this is an incorrect sentence.")
        expect(result).to eq false
    end

    it 'returns true if sentence ends with a fullstop' do
        result = improve_grammar("This is a correct sentence.")
        expect(result).to eq true
    end

    it 'returns true if sentence ends with an exclaimation mark' do
        result = improve_grammar("This is a correct sentence!")
        expect(result).to eq true
    end

    it 'returns true if sentence ends with an question mark' do
        result = improve_grammar("This is a correct sentence?")
        expect(result).to eq true
    end

    it 'returns false if sentence does not end with the correct punctuation' do
        result = improve_grammar("This is a correct sentence,")
        expect(result).to eq false
    end
end