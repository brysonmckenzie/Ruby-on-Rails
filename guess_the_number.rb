def guess_the_number guess
    number = 25
    puts "You got it" unless number != guess
    puts "Guess was to low" unless number <= guess
    puts "Guess was to high" unless number >= guess
end


