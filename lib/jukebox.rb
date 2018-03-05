require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands\n
    - help : displays this help message\n
    - list : displays a list of songs you can play\n
    - play : lets you choose a song to displays\n
    - exit: exits this program"
end

def list (songs_list)
  songs_list.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play (songs_list)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..songs_list.size).include?(input.to_i)
    puts "Playing #{songs_list[input.to_i - 1]}"
  elsif songs_list.include?(input)
    puts "Playing #{input}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def get_input
  puts "Please enter a command:"
  gets.chomp
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
