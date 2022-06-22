class GrammarStats
    def initialize
        @counter = {'true' => 0, 'false' => 0}
    end

    def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
        fail "No text provided" if text.empty?
        if text[0] == text[0].upcase && text.match?(/[.?!]\z/)
            @counter['true'] += 1
            return true
        else
            @counter['false'] += 1
            return false
        end
    end

    def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    percentage = (@counter['true'].to_f / (@counter['true'] + @counter['false'])) * 100
    percentage.round
    end
end