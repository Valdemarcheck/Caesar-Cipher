
def caesar_cipher(original_string, shift)
    ciphered_string = original_string.split('')

    shift_repetitions = shift / 26
    shift -= shift_repetitions * 26

    ciphered_string = ciphered_string.map do |char|
        char_ascii = char.ord
        if char_ascii.between?(65, 90)
            char_ascii += shift
            char_ascii += 26 if char_ascii < 65
            char_ascii -= 26 if char_ascii > 90
        elsif char_ascii.between?(97, 122)
            char_ascii += shift
            char_ascii += 26 if char_ascii < 97
            char_ascii -= 26 if char_ascii > 122
        end
        char = char_ascii.chr
    end
    [ciphered_string.join(''), ciphered_string.bytes.join('')]
end
