class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @reading_position = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      @num_words = @contents.split.count
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
        fail "Invalid reading rate" if wpm < 1
        count_words
        return (@num_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      fail "Invalid reading rate and/or number of minutes" if wpm < 1 || minutes < 1
      
      
      amount_read = wpm * minutes
      chunk = @contents.split[@reading_position...@reading_position + amount_read].join(" ")
      @reading_position += amount_read
      if @reading_position - amount_read == 0
        return "#{chunk}..."
      else 
        return "...#{chunk}..."
      end
    end
    
  end

  #This is a note for Ollie