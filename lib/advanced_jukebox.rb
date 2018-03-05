

def get_input
  puts "Please enter a valid command:"
  gets.chomp
end

def help
  puts "I accept the following commands\n
    - help : displays this help message\n
    - list : displays a list of songs you can play\n
    - play : lets you choose a song to displays\n
    - exit: exits this program"
end

def list (songs_list)
  index = 1
  songs_list.each do |song, path|
    puts "#{index}. #{song}"
    index += 1
  end
end

def play (songs_list)
  puts "Please enter a song name"
  input = gets.chomp
  if songs_list[input]
    puts "Playing #{input}"
    filename = songs_list[input]
    system "open #{filename}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs_list)
  help
  input = get_input
  while input != "exit"
    if input == "help"
      help
    elsif input == "list"
      list(songs_list)
    elsif input == "play"
      play(songs_list)
    else
      puts "Invalid input, please try again"
    end
    input = get_input
  end
  exit_jukebox
end
