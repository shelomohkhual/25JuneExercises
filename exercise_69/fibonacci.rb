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
    return values.last
end

def recursive_nth_fibonacci_number(n)
    n.times do 
        if n <= 2
            return n=1
        end
        return recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
    end
end
