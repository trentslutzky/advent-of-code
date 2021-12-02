function part_two() 
    lines = readlines("data.txt")
    #lines = ["1","2","3","4","5","6"]
    lines = map(line -> line=parse(UInt16,line),lines)
    lines = lines[1:length(lines)-2]+lines[2:length(lines)-1]+lines[3:length(lines)]

    previous = -1
    num_larger = -1

    for l in lines
        if(l>previous)
            num_larger += 1
        end
        previous = l
    end

    print(num_larger)
end

part_two()
