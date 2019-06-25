def recursive_nth_fibonacci_number(position)
    position.times do 
        if position <= 2
            return position=1
        end
        return recursive_nth_fibonacci_number(position-1) + recursive_nth_fibonacci_number(position-2)
    end
end


print "Enter Fibonacci Position :"
position=gets.chomp.to_i

print "Fibonacci Position (#{position}) is: "
puts recursive_nth_fibonacci_number(position)
puts

