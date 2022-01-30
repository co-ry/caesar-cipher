class CaesarCipher
    def translate(message, shift, result = '')
      message.each_char do |char|  
        if char.ord.between?(65, 90)
        result = char.ord + shift
          if result > 90
          result += -24
          end
        else if char.ord.between?(97, 122)
      result = char.ord + shift
        if result > 90
          result += -24
        end
        end
      end
      puts result
    end
  end
  
  to_num("Cory is the Best", 1)