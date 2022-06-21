def count_words(string)
    if string == " "
        return nil
    elsif array_of_words = string.split(" ")
        return array_of_words.count
    end
end