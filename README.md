     ___________________/\___________________
    /                                        \

# PencilMustache

Do you only need to replace some tokens?  This is all you need (Ruby 1.9+).  No need for 3000 lines of Ruby, like in Mustache proper.

## Usage

Quick example ([similar to Mustache](https://github.com/defunkt/mustache#usage)):

    >> require 'pencil_mustache' # Assuming it's in your $LOAD_PATH
    => true
    >> PencilMustache.render("Hello {{planet}}!", :planet => "World")
    => "Hello World!"
    >> PencilMustache.render("Hello {{planet}}!", :planet => "Omicron Persei 8")
    => "Hello Omicron Persei 8!"

## Installing

It's so small ([15 lines][code]), you might as well copy it into your app.  Or just use the same `gsub` feature when you need it.

But if you insist, it's a gem too:

    gem install pencil_mustache

  [code]: https://github.com/benjaminoakes/pencil_mustache/blob/master/lib/pencil_mustache.rb

## Contributing

Run the specs using:

    ruby spec/pencil_mustache_spec.rb

Build the gem using:

    gem build pencil_mustache.gemspec

## License

MIT.  See LICENSE for a copy.
