require 'diary_entry'

RSpec.describe DiaryEntry do
        it "return the title as a strg when calling title" do
            entry = DiaryEntry.new("Today", "Dear diary, I hope you're well")
            result = entry.title
            expect(result).to eq "Today"
        end

        it "return the contents as a strg when calling contents" do
            entry = DiaryEntry.new("Today", "Dear diary, I hope you're well")
            result = entry.contents
            expect(result).to eq "Dear diary, I hope you're well"
        end

        it "Return the number of words in the contents as an integer" do
            entry = DiaryEntry.new("Today", "Dear diary, I hope you're well")
            result = entry.count_words
            expect(result).to eq 6
        end

        it "Return an integer representing the reading time of the contents" do
            entry = DiaryEntry.new("Today", "Dear diary, I hope you're well")
            result = entry.reading_time(6)
            expect(result).to eq 1
        end

        it "Return an integer representing the reading time of the contents" do
            entry = DiaryEntry.new("Today", "One Two " * 50)
            result = entry.reading_time(6)
            expect(result).to eq 17
        end

        it "Return an error if wpm is invalid (0)" do
            entry = DiaryEntry.new("Today", "One two three four five")
            expect{ entry.reading_time(0) }.to raise_error "Invalid reading rate"
            
        end

        it "Return the ammount that someone could read in the time given" do
            entry = DiaryEntry.new("Today", "One two three four five")
            result = entry.reading_chunk(1, 4)
            expect(result).to eq "One two three four..."
        end

        it "Return the next chunk of text when the method is called twice" do
            entry = DiaryEntry.new("Today", "One two three four five")
            entry.reading_chunk(1, 2)
            result = entry.reading_chunk(1, 2)
            expect(result).to eq "...three four..."
        end

        it "Return the final chunk of text when the method is called again" do
            entry = DiaryEntry.new("Today", "One two three four five")
            entry.reading_chunk(1, 2)
            entry.reading_chunk(1, 2)
            result = entry.reading_chunk(1, 2)
            expect(result).to eq "...five"
        end

        it "Return entire contents if readable in time given" do
            entry = DiaryEntry.new("Today", "One two three four five")
            result = entry.reading_chunk(1, 6)
            expect(result).to eq "One two three four five"
        end

        it "Returns first chunk again once entire contents has been read" do
            entry = DiaryEntry.new("Today", "One two three four five")
            entry.reading_chunk(1, 2)
            entry.reading_chunk(1, 2)
            entry.reading_chunk(1, 2)
            result = entry.reading_chunk(1, 2)
            expect(result).to eq "One two..."
        end

        it "Return an error if wpm is invalid (0)" do
            entry = DiaryEntry.new("Today", "One two three four five")
            expect{ entry.reading_chunk(0, 0) }.to raise_error "Invalid reading rate and/or number of minutes"
            expect{ entry.reading_chunk(0, 1) }.to raise_error "Invalid reading rate and/or number of minutes"
            expect{ entry.reading_chunk(1, 0) }.to raise_error "Invalid reading rate and/or number of minutes"
        end
       
    end

    