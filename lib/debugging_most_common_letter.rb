def get_most_common_letter(text)
    p "text is: #{text}"
    counter = Hash.new(0)
    p "counter is #{counter}"
    text.chars.each do |char|
        p "the characters at the start of the loop are #{char}"
        unless char == " " || char == ","
      counter[char] += 1
        end
      p "the counter in the loop is: #{counter}"
    end
    p "counter array = #{counter.to_a}"
    # I changed this from: counter.to_a.sort_by { |k, v| v }[0][0] to: counter.to_a.sort_by { |k, v| v }[-1][0]
    sorted = counter.to_a.sort_by { |k, v| v }[-1][0]
    p "sorted counter: #{sorted}"
    return counter.to_a.sort_by { |k, v| v }[-1][0]
  end
  
  puts get_most_common_letter("the roof, the roof, the roof is on fire!")
  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"