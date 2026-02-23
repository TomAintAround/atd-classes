function output = factorial(input) 
    arguments (Input)
        input
    end
    
    arguments (Output)
        output
    end

    output = 1;
    for i = 2:input
        output = output * i;
    end
end