def iterative_nth_fibonacci_number(n)
    values=[0]
    base = 1
    (n+1).times do |num|
        if num == 1
            value=values[num] + base
        else
            value=values[num] + values[num-1]
        end
        values.push value
    end
    puts values.last
end

def fib_position(number)
    (number+1).times.each do |number|
        print "Fibonacci Position (#{number}) is: "
        iterative_nth_fibonacci_number(number)
        puts
    end
end

print "Enter Fibonacci Position :"
position=gets.chomp.to_i
fib_position(position)
