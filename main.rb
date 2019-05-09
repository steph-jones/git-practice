def puts_git(cmd)
    puts "git #{cmd} -h"
end

def menu
    puts "1: Enter git command"
    puts "2: Exit"
    choice = gets.to_i
    # sleep(2) if you ever need something to show for 2 (or howevermany) seconds
    print 'clear'
    case choice
    when 1
        puts "Enter git command"
        puts_git(gets.strip)
        menu
    when 2
        puts "Thanks for using our program"
        exit
    else
        puts "invalid Input"
        menu   
    end
end

menu
