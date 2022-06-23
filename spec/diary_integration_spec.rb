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
    end
end
