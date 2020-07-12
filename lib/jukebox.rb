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

def list(songs)
  puts "1. #{songs[0]}"
  puts "2. #{songs[1]}"
  puts "3. #{songs[2]}"
  puts "4. #{songs[3]}"
  puts "5. #{songs[4]}"
  puts "6. #{songs[5]}"
  puts "7. #{songs[6]}"
  puts "8. #{songs[7]}"
  puts "9. #{songs[8]}"
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  if songs.include? song
    songs.each do |element|
      if song == element
        puts "Playing #{element}"
      end
    end
  elsif song.to_i.between?(1, 10)
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command_1 = gets.strip
  if command_1 == "help"
    help
  elsif command_1 == "list"
    list(songs)
  elsif command_1 == "play"
    play(songs)
  elsif command_1 == "exit"
    exit_jukebox
  else run
  end
end
