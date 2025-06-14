require 'pry-byebug'
def caesar_cipher(string, key)
  key = key % 26
string.bytes.map do |char|
    if char >= 65 and char <= 90
      if char + key > 90 and key > 0
        char - (26 - key)
      elsif char - key < 65 and key < 0
        char + (26 + key)
      else
        char + key
      end
    elsif char >= 97 and char <= 122
      if char + key > 122 and key > 0
        char - (26 - key)
      elsif char - key < 97 and key < 0
        char + (26 + key)
      else
        char + key
      end
    else
      char
    end
  end.pack('c*')
end

puts caesar_cipher("What a string!", 5)
