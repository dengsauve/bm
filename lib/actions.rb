def list_bookmarks
  @bookmark_hash['bookmarks'].each_with_index do |bookmark, index|
    puts "#{index}. #{bookmark}"
  end
end


def add_url(url_string)
  puts "add_url bookmark_hash: #{@bookmark_hash['bookmarks']}" if @debug
  @bookmark_hash['bookmarks'] << url_string
  @bookmark_hash['bookmarks'].uniq!
  dump_hash if @debug
  0
end


def open_url(index)
  url = @bookmark_hash['bookmarks'][index]
  system("open #{url}") if url
end


def remove_url(index)
  @bookmark_hash['bookmarks'].delete_at(index)
  0
end