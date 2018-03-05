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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each do |record|
    puts "#{songs.index(record) + 1}. #{record}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  play_response = gets.chomp

  if songs.include?(play_response)
    puts "Playing #{play_response}"
  elsif play_response.to_i != 0 && songs[play_response.to_i - 1]
    puts "Playing #{songs[play_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  run_command = gets.chomp

  if run_command == "exit"
    exit_jukebox
  elsif run_command == "help"
    help
    puts "Please enter a command:"
    run_command = gets.chomp
  elsif run_command == "list"
    list(songs)
    puts "Please enter a command:"
    run_command = gets.chomp
  elsif run_command == "play"
    play(songs)
    puts "Please enter a command:"
    run_command = gets.chomp
  else
    puts "Invalid input, please try again"
    puts "Please enter a command:"
    run_command = gets.chomp
  end

end
