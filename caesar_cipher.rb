def caesar (text, shift)
    
   #use bytes method to get the integer value of the variable: done
   #store that value in a new variable: done
   #update that new value by adding the shift variable: done 
   #convert from byte integer to string using  pack method: done
   #ensure that I convert string to lowercase: done 
   #use or statement to keep within lowercase a-z and upcase a-z
   #current issue with spaces and punctuations 


   conv_text = text.bytes
   byte_array=[]
   updated_byte_array=[]
   alpha_difference=0 
   byte_array = conv_text.map do |element| 
        if element > 65 && element < 91
            new= element + shift 
            if new > 90
                alpha_difference =  new - 90
                element = 64
                new = element + alpha_difference 
            end
        elsif element > 96 && element < 123 
            new= element + shift 
            if new > 122
                alpha_difference =  new - 122
                element = 95
                new = element + alpha_difference 
            end
        
        else
            new = element
        end
        updated_byte_array.push(new)
    end
    return updated_byte_array.pack('C*')
    

end