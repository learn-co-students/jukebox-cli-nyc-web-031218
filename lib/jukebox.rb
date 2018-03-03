
require "pry"

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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input
    puts "Please enter a command:"
    response = gets.chomp
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
