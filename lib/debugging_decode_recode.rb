def encode(plaintext, key)
    p "at the start, the plaintext is #{plaintext} and the key is #{key}"
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    p "at the start cipher is #{cipher} it is made up of #{key.chars.uniq}"
    ciphertext_chars = plaintext.chars.map do |char|
        p "Ciphertext chars are: #{char}"
        p "cipher.find_index(char): #{cipher.find_index(char)}"
    # MY IF STATEMENT FIX:
      if cipher.find_index(char) != nil
        (65 + cipher.find_index(char)).chr
      end
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    p "at the start, the plaintext is #{ciphertext} and the key is #{key}"
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    p "at the start cipher is #{cipher} it is made up of #{key.chars.uniq}"
    plaintext_chars = ciphertext.chars.map do |char|
    p "plaintext chars are: #{char}"
    p "cipher value: #{char.ord - 65}"
    p "cipher[65 - char.ord] is #{cipher[65 - char.ord]}"
    # I CHANGED IT FROM: cipher[65 - char.ord] to: cipher[char.ord - 65]
      cipher[char.ord - 65]
    end
    return plaintext_chars.join
  end

  puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"