
function part_one()
    z = 0
    y = 0

    function parse_commands()
        instructions = readlines("steps")
        map(step -> (do_command(split(step)[1],parse(Int16,split(step)[2]))),instructions)
    end

    function do_command(command,magnitude)
        if command == "forward"
            z = z + magnitude
        elseif command == "up"
            y = y - magnitude
        else # "down"
            y = y + magnitude
        end
    end

    parse_commands()

    print(z*y)

end

part_one()
