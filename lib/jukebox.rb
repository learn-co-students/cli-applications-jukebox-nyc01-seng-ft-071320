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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end  
end  

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  output = "Invalid input, please try again"
  songs.each_with_index do |song, index_num|
    case user_input
      when song then output = "Playing #{song}"
      when "#{index_num+1}" then output = "Playing #{song}"
    end
  end  
  puts output
end  

def exit_jukebox 
  puts "Goodbye"  
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  case input
    when "help"
      help
      run(songs)
    when "list"
      list(songs)
      run(songs)
    when "play"
      play(songs)
      run(songs)
    when "exit"
      exit_jukebox
    end
end  






