# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song,index|
      puts ("#{index + 1}. #{song}").strip
  end
end

def prompt
  puts "Please enter a song name or number:"
    end

def get_input
  gets.strip
    end

def play(songs) 
  prompt
    input = get_input
      songs.each_with_index do |song,index|
  
  if input == "#{index + 1}"
    puts "Playing #{song}"
  end
end

  if songs.include?(input) == true 
    puts "Playing #{input}"  
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
    end

#---------------------------------------------------------------#

def run(songs)
  puts "Please enter a command:"
    input = get_input
    
if input == "exit" 
  exit_jukebox
    end
    
if input == "help" 
  help
    end

if input == "list" 
  list(songs)
    end

if input == "play" 
  play(songs)
    end

end

