
def validate_number(num)
    original_numbers = num.to_s.split("").map! do |x| x.to_i end
    position = original_numbers.length - 2 

    #starting at the second most right digit, multiply every other value by 2
     until position < 0
         original_numbers[position] = 2 * (original_numbers[position])
         position -= 2 
     end 

    #if a value is greater than 9, split it into two seperate values and sum them together (ex. 12 -> 1 + 2)
    original_numbers.map! do |x|
        x > 9 ? (x.to_s.split("").map! {|y| y.to_i }.reduce(&:+)) : x
    end 

    original_numbers.flatten!
    original_numbers.reduce(&:+)%10 == 0 ? (puts "\u001b[32mvalid number") : (puts "\u001b[31mnumber invalid" +" please try again.")
end 