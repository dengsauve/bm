# bm
CLI Bookmark Tool, built with ❤️ in Ruby

## Compatibility
BM should work with most unix/mac systems (sorry not sorry Windows)

## Installation

1. Clone the repo `git clone https://github.com/dengsauve/bm.git`
2. Alias for convenience

```bash
chmod +x bm.rb
alias bm='ruby /absolute/path/to/bm.rb'
```


## Usage

`bm add ${url}`

Adds a website URL to your library (format should be http(s)://domain.com)

`bm ls`

List all your bookmarks in a table

`bm ${index}`

Opens whatever bookmark is at the specified index

`bm ${search term}`

Opens the first url that contains the search term

`bm search ${search term}`

Lists all bookmarks that contain search term

`bm [rm|remove|delete] ${index}`

Deletes url with the specified index

## About

I wanted a plain and simple to use (e.g. [NB cli note tool](https://github.com/xwmx/nb)), and didn't like the other options available.

### Goals

#### CRUD

- [x] `bm add ${url}` add a website to your library
- [x] `bm ls` list all bookmarks w/index
- [x] `bm ${index}` open the url at the specified index
- [x] `bm ${search_term}` open first url that contains string (result may not be what you expect! Use w/care)
- [x] `bm search ${search_term}` spits out a list of matching urls with their ids
- [ ] `bm edit ${url_id}` using search, you can get the id of the bookmark you want to edit
- [x] `bm [rm|remove|delete] ${url_id}` using search, you can get the id of the bookmark you want to remove
- [ ] `bm` launch an interactive terminal (maybe, depends on if it's useful)

#### Persistence

Local DB or .json file seems like the best bet

#### Syncing

Going the JSON route would make it easy to update a .git repo. Not sure what to do about a DB

### Contributions

Feel free to submit a PR with any changes you'd like to see.
