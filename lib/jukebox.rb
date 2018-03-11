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
puts "I accept the following commands:
    \n - help: displays this help message
    \n - list: displays a list of songs you can play
    \n - play: lets you choosea a song to displays
    \n - exit: exits this program"
end


def play(songs)
  # binding.pry
puts "Please enter a song name or number:"
  song_name = gets.chomp

    songs.each_with_index do |song, i|
        if song_name.size <=1 && song == songs[song_name.to_i-1]
          puts "Playing #{song}"
        elsif song_name == song
          puts "Playing #{song}"
        elsif song_name.to_i > songs.length
          puts "Invalid input, please try again"
        else
          puts "Invalid input, please try again"
  end

end

end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  until command == "exit"

  if command == "list"
    list(songs)
       puts "Please enter a command:"
  command = gets.chomp
  elsif command == "play"
  play(songs)
    puts "Please enter a command:"
  command = gets.chomp
  elsif command == "help"
  help
   puts "Please enter a command:"
  command = gets.chomp
  end

end

   exit_jukebox
end

def list(songs)
   songs.each_with_index do |song,i|
     i+=1
     puts "#{i}. #{song}"
   end
end

def exit_jukebox
puts "Goodbye"
end
