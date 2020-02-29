def add a, b
    return a + b 
end

def subtract a, b 
    return a - b 
end

def sum array
    if !array
        return 0
    else 
        return array.sum
    end
end

def multiply *numbers
    numbers.inject(:*)
end

def power a, b 
    return a**b
end

def factorial value
    allNumbers = Array.new

    if value == 0
        return 1
    else
        i = value
        while i > 0
            allNumbers.push(i)
            i = i-1
        end
    end

    return allNumbers.inject(:*)
end
    
