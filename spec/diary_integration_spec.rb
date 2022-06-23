require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do
    context "when diary entries have been added" do
        it "returns a list of diary entries" do
            diary = Diary.new
            entry_one = DiaryEntry.new('title1', 'contents1')
            entry_two = DiaryEntry.new('title2', 'contents2')
            diary.add(entry_one)
            diary.add(entry_two)
            expect(diary.all).to eq [entry_one, entry_two]
        end

        it "returns totalword count of all entries" do
            diary = Diary.new
            entry_one = DiaryEntry.new('title1', 'contents1 hi hi hi hi')
            entry_two = DiaryEntry.new('title2', 'contents2 hello hello')
            diary.add(entry_one)
            diary.add(entry_two)
            expect(diary.count_words).to eq 8
        end

        it "returns total reading time for all entries" do
            diary = Diary.new
            entry_one = DiaryEntry.new('title1', 'contents1 hi hi hi hi')
            entry_two = DiaryEntry.new('title2', 'contents2 hello hello')
            diary.add(entry_one)
            diary.add(entry_two)
            expect(diary.reading_time(4)).to eq 2
        end

        it "return the longest full entry that can be read in the given time" do
            diary = Diary.new
            entry_one = DiaryEntry.new('title1', 'one two')
            entry_two = DiaryEntry.new('title2', 'one two three four')
            entry_three = DiaryEntry.new('title3', 'one two three four five six')
            diary.add(entry_one)
            diary.add(entry_two)
            diary.add(entry_three)
            expect(diary.find_best_entry_for_reading_time(3,2)).to eq entry_three
        end
    end
end
