def add_url(url_string)
  puts "add_url bookmark_hash: #{@bookmark_hash['bookmarks'].inspect}" if @debug
  @bookmark_hash['bookmarks'] << url_string
  @bookmark_hash['bookmarks'].uniq!
  dump_hash if @debug
  0
end


def search_hash(target)
  index_retained_hash = {}
  @bookmark_hash['bookmarks'].each_with_index do |e, i|
    if e.include? target
      index_retained_hash[i] = e
    end
  end
  puts_indexed_bookmarks(index_retained_hash)
end


def open_url(url)
  system("open #{url}") if url
end


def search_and_open(target)
  urls = @bookmark_hash['bookmarks'].select { |e| e.include? target }
  if urls.size > 0
    open_url(urls[0])
  end
end


def open_url_from_index(index)
  open_url(@bookmark_hash['bookmarks'][index])
end


def remove_url(index)
  @bookmark_hash['bookmarks'].delete_at(index)
  0
end