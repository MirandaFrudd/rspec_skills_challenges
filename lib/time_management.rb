# Returns the num of words per min. 
# 200 words per min
# 200 / 60 = words per sec
# num words / words per sec = num seconds

def time_management(string)
    num_words = string.split.count
    words_per_sec = 200 / 60
    return "#{num_words / words_per_sec} seconds"
end