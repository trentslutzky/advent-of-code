open("./data.txt") do f
    previous = -1
    num_larger = -1
    for l in eachline(f)
        n = parse(UInt16,l)
        if(n>previous)
            num_larger += 1
        end
        previous = n
    end
    print(num_larger)
end
