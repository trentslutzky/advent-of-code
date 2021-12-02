function part_one()
    depth = 0
    aim = 0
    pos = 0

    function do_command(command,magnitude)
        if(command == "forward")
            print("pos by ",magnitude)
            pos = pos + magnitude
            depth = depth + magnitude * aim
        elseif(command == "up")
            print("aim by ",-magnitude)
            aim = aim - magnitude
        else #"down"
            print("aim by ",magnitude)
            aim = aim + magnitude
        end
        println(" - current pos: ",pos," current aim: ",aim," current depth: ",depth)
    end

    function parse_commands()
        instructions = readlines("steps")
        map(step -> (do_command(split(step)[1],parse(Int16,split(step)[2]))),instructions)
    end
    parse_commands()

    print(depth*pos)

end

part_one()
