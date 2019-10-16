#write your code here
def add(num_one, num_two)
    num_one + num_two
end

def subtract(num_one, num_two)
    num_one - num_two
end

def sum(arr)
    total = 0
    arr.each{|a| total = total + a}
    total
end

def multiply(arr)

    total = arr[0]
    arr[1..-1].each do |a|
       total = total * a
    end
    total
end

def power(arr)

    total = arr[0]
    arr[1] - 1.times{total = total * arr[0]}
    total
end

def factorial(number)

    total = 0
    if(number == 1 || number == 0)
        total = 1;
    else
        total = number
        i = number
        (number - 1).times do
            i = i - 1
            total = total * i
            puts total
        end
    end
    total
end