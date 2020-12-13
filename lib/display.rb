require 'terminal-table'


def list_bookmarks
  puts_bookmarks(@bookmark_hash['bookmarks'])
end


def puts_bookmarks(bookmarks)
  rows = []
  bookmarks.each_with_index { |bookmark, index| rows << [index, bookmark] }
  table = Terminal::Table.new :rows => rows, :title => "BM Bookmarks"
  puts table
end


def puts_indexed_bookmarks(bookmarks)
  bookmarks.each do |bookmark|
    puts "#{bookmark[0]}. #{bookmark[1]}"
  end
end