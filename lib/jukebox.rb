=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"

users_name = gets.chomp

puts say_hello(users_name)
=end


def songs
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

end

def help
  puts("
          I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program
  ")


end






def list(songs)

  songs.each_with_index{
    |item, index|
    puts ("#{index}. #{item}")
  }

end





def play(songs)
  puts("Please enter a song name or number: ")

  user_response = gets.chomp
  songs.include?(user_response)? puts("Playing #{user_response}") : puts("Invalid input, please try again")

end

#play(songs)





def exit_jukebox

  puts ("Goodbye")

end






def run(arr)
  help
  user_response = ""

  while user_response != "exit"

    puts("Please enter a command: ")
    user_response = gets.chomp

    if user_response == "exit"
      exit_jukebox

    elsif user_response == "help"
      help

    elsif user_response == "list"
      list(songs)

    elsif user_response == "play"
      play(songs)

    end#/if
  end #/while

end

run(songs)
