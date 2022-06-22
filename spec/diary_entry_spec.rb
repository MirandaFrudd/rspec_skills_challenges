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

        it "Return the ammount that someone could read in the time given" do
            entry = DiaryEntry.new("Today", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin malesuada orci sodales eros ullamcorper pellentesque. Nullam non eleifend turpis. Nunc a magna quis urna posuere fringilla id nec massa. Integer vitae eros justo. Nunc quis ipsum sit amet ligula fringilla cursus. Suspendisse elementum at dolor a commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at arcu odio. Etiam interdum justo sed arcu eleifend euismod. Donec elit mauris, dictum ac vehicula id, feugiat in metus. Fusce mattis leo sed sapien mollis, in rhoncus risus feugiat. Fusce iaculis lacus enim, eu condimentum purus maximus ut. Cras sit amet diam id.")
            result = entry.reading_chunk(10, 4)
            expect(result).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin malesuada orci sodales eros ullamcorper pellentesque. Nullam non eleifend turpis. Nunc a magna quis urna posuere fringilla id nec massa. Integer vitae eros justo. Nunc quis ipsum sit amet ligula fringilla..."
        end
    end

    