class Diary
    def initialize
        @all_entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @all_entries << entry
    end
  
    def all
      # Returns a list of instances of DiaryEntry
        return @all_entries
    end
  
    def count_words
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
      return @all_entries.sum{ |entry| entry.count_words }
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
      max_words = wpm * minutes
      can_be_read = []
      @all_entries.each do |entry| 
        if entry.count_words <= max_words
          can_be_read << entry
        end
      end
      entry_title = can_be_read.sort_by { |entry| entry.count_words }[-1].title
      return "You can read #{entry_title}"
    end
  end
