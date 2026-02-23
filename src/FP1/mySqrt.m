function output = mySqrt(input, err)
    arguments (Input)
        input
        err
    end
    
    arguments (Output)
        output
    end

    realValue = sqrt(input);
    output = 10;
    while abs(output - realValue) >= err
        output = (output + input/output)/2;
    end
end