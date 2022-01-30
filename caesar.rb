
def translate(message, shift, result = '')
  phrase = []
  message.each_char do |char|  
    if char.ord.between?(65, 90)
      result = char.ord + shift
        if result > 90
        result += -26
        end
      else if char.ord.between?(97, 122) 
      result = char.ord + shift
     if result > 122
      result += -26
      end
    else 
      result = char.ord
    end
    end
      phrase.push(result.chr)
  end
  puts phrase.join("")
end


translate("What a string!", 5)

