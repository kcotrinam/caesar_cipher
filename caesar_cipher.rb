def caesar_cipher(string, num)
  low_list = ('a'..'z').to_a
  up_list = ('A'..'Z').to_a
  new_arr = []

  string.length.times do |i|
    if low_list.include?(string[i])
      letter_index = low_list.index(string[i])
      letter_index = - 1 if letter_index == 25
      new_arr.push(low_list[letter_index + num])
    elsif up_list.include?(string[i])
      letter_index = up_list.index(string[i])
      letter_index = - 1 if letter_index == 25
      new_arr.push(up_list[letter_index + num])
    else
      new_arr.push(string[i])
    end
  end
  new_arr.join('')
end

p caesar_cipher('Hola como estaz', 5)
