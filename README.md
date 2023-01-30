## Installation

Add the gem and add to the application's Gemfile:

```ruby
  gem 'vlad-kozachenko-sdk', git: 'https://github.com/vladislav-kozachenko/vlad-kozachenko-sdk.git', branch: 'master'
```

## Usage

To load LOTR movies list call:

```ruby
LOTR.movies(your_access_token)
```

For loading specific movie provide movie id:
```ruby
LOTR.movies(your_access_token, movie_id)
```

To load qoutes from movie:
```ruby
LOTR.quotes(your_access_token, movie_id)
```

