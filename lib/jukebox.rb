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

# def say_hello(name)
#   puts "Hello #{name}!"
#
# end
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    # binding.pry
    puts "#{index+1}. #{song}"
    # binding.pry
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song=gets.chomp

  if (1..songs.size).to_a.include?(song.to_i)
    # binding.pry
    song=song.to_i-1
    puts "Playing #{songs[song]}"
  elsif songs.include?(song)
    song=song.to_i
    puts "Playing #{songs[song]}"
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
  user_response=gets.strip

  until user_response=="exit"
    if user_response=="help"
      help
      user_response
    elsif user_response=="play"
      play
      user_response
    elsif user_response== "list"
      list"exit"
      user_response
    elsif user_response=="exist"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
      user_response
    end
  end
end
