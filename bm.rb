#!/usr/bin/env ruby
require 'json'
require 'require_all'
require_all('lib')


def dump_hash
  puts @bookmark_hash.inspect
end


def search_hash(target)
  dump_hash
end


def search_and_open(target)
  #
end


@reserved_words = %w[add search ls list edit rm remove delete]
@bookmark_hash = get_hash
@debug = false
puts "Retrieved bookmark hash: #{@bookmark_hash}" if @debug

puts "Arguments: #{ARGV.inspect}" if @debug

if ARGV.size > 1 and ARGV[1]
  case ARGV[0]
  when 'add'
    write_hash if add_url(ARGV[1]) == 0
  when 'search'
    search_hash(ARGV[1])
  when 'rm', 'remove', 'delete'
    if ARGV[1].numeric?
      write_hash if remove_url(ARGV[1].to_i) == 0
    end
  else
    puts "You haven't entered a recognized command! Try `bm help` for more info."
  end
end

if ARGV.size == 1
  case ARGV[0]
  when 'list', 'ls'
    dump_hash if @debug
    list_bookmarks
  else
    if ARGV[0].numeric?
      open_url(ARGV[0].to_i)
    else
      search_and_open(ARGV[0])
    end
  end
end