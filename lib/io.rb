require 'json'

def get_hash
  path = 'bookmarks.json'
  if File.exist?(path)
    file = File.read(path)
    puts "file: #{file}" if @debug
    return JSON.parse(file)
  end

  {
      'bookmarks':[],
      'debug': false
  }
end

def write_hash
  File.write('bookmarks.json', JSON.dump(@bookmark_hash))
end