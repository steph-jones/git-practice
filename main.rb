def puts_git(cmd)
    puts "git #{cmd} -h"
end

def menu
    puts "MAIN MENU" #.colorize(:cyan)
    puts "1: Enter git command" #.colorize(:yellow)
    puts "2: Exit" #(:yellow)
    choice = gets.to_i
    # sleep(2) if you ever need something to show for 2 (or howevermany) seconds
    case choice
    when 1
        puts "Enter git command" #.colorize(:green)
        puts_git(gets.strip)
        menu
    when 2
        puts "Thanks for using our program" #.colorize(:blue)
        exit
    else
        puts "invalid Input" #.colorize(:red)
        sleep(2) # if you ever need something to show for 2 (or howevermany) seconds
        menu   
    end
end

menu
