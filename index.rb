def decode_char(morse_code)
  morse_code_table = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-'  => 'K', '.-..' => 'L',
    '--' => 'M', '-.'   => 'N', '---'  => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code_table[morse_code]
end

def decode_word(morse_word)
  decoded_chars = morse_word.split.map { |morse_char| decode_char(morse_char) }
  decoded_chars.join
end

def decode(message)
  decoded_words = message.split('   ').map { |morse_word| decode_word(morse_word) }
  decoded_words.join(' ')
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message)
puts decoded_message
