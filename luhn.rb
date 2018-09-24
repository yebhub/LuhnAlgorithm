#make sure the number is the appropriate length 

def validate_number(num)
    original_numbers = num.to_s.split("").map! do |x| x.to_i end
    position = original_numbers.length - 2 


     until position < 0
        puts position
         original_numbers[position] = 2 * (original_numbers[position])
         position -= 2 
     end 

    original_numbers.map! do |x|
        if x > 9 
            x.to_s.split("").map! {|y| y.to_i }.reduce(&:+)
        else 
            x
        end 
    end 

    original_numbers.flatten!

    original_numbers.reduce(&:+)%10 == 0 ? (puts "\u001b[32mvalid number") : (puts "\u001b[31mnumber invalid" +" please try again.")
    
end 
