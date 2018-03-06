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
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  num = song.to_i
  if num.between?(1,songs.length)
    puts "playing #{songs[num -1]}"
  elsif songs.include?(song)
    puts "playing #{song}"
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
  command = gets.chomp
  if command == "list"
    list(songs)
    run(songs)
  elsif command == "play"
    play(songs)
    run(songs)
  elsif command == "help"
    help
    run(songs)
  elsif command == "exit"
    exit_jukebox
  else
    run(songs)
  end
end
