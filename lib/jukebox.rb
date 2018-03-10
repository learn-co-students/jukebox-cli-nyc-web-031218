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
  puts "I accept the following commands: \n - help : displays this help message \n - list : displays a list of songs you can play \n - play : lets you choose a song to play \n - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
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
    puts "Invaild input, please try again"
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
  input = gets.chomp
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
      break
    end
  end
end
