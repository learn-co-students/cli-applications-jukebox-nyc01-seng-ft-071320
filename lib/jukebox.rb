require 'pry'
# Add your code here
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

def play(songs)
  puts "Please enter a song name or number:"
  selected = gets.strip
  if(songs.include? selected)
    puts "Playing #{selected}"
  elsif(selected.to_i <= songs.size && selected.to_i > 0)
    puts "Playing #{songs[(selected.to_i) -1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}" 
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  response = " "
  
  while(response != "exit") do
    response = gets.strip
    if(response == "list")
      list(songs)
      elsif(response == "play")
        play(songs)
      elsif(response == "help")
        help
    end
  end
  exit_jukebox
end

