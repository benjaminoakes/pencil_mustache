     ___________________/\___________________
    /                                        \
    |                                        |

# Pencil Mustache

Do you only need to replace some tokens?  This is all you need (Ruby 1.9+).  No need for 3000 lines of Ruby, like in Mustache proper.

## Usage

Quick example ([similar to Mustache](https://github.com/defunkt/mustache#usage)):

    >> require 'pencil_mustache' # Assuming it's in your $LOAD_PATH
    => true
    >> PencilMustache.render("Hello {{planet}}", :planet => "World!")
    => "Hello World!"

## Installing

It's so small ([15 lines][code]), you might as well copy it into your app.  Or just use the same `gsub` feature when you need it.

  [code]: https://github.com/benjaminoakes/pencil_mustache/blob/master/lib/pencil_mustache.rb

### But copying and pasting code is dirty!

Well, [let me know you'd like a gem](https://github.com/benjaminoakes/pencil_mustache/issues/1), then.

## Contributing

Run the specs using:

    ruby spec/pencil_mustache_spec.rb

## License

MIT.  See LICENSE for a copy.
