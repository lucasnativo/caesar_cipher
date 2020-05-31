
def caesar_cipher(str, shift)
    
    def mod (n, m)
        ((n % m + m) % m)
    end

    def setCode(code)
        code <= 90 ? 65 : 97
    end

    def rotate(char, shift)
        code = char.ord
        if (code >= 65 && code <= 90 || code >= 97 && code <= 122)
            temp = (mod(code + shift - setCode(code), 26) + setCode(code)).chr
        else
            char
        end
    end

    str.split("").map! { |char| rotate(char, shift)}.join("")
end