Something I noticed when reading the `gsub` docs:

* [gsub in 1.8.7](http://ruby-doc.org/core-1.8.7/String.html#method-i-gsub)
* [gsub in 1.9.3](http://ruby-doc.org/core-1.9.3/String.html#method-i-gsub)

New feature: allow hash as replacement

Example of `gsub` with hash:

    1.9.3-p327 :002 > 'foo bar'.gsub(/foo/, 'foo' => 'baz')
    => "baz bar"
    1.9.3-p327 :005 > 'foo bar'.gsub(/[a-z]{3}/, 'foo' => 'baz', 'bar' => 'qux')
    => "baz qux"

Can I use it as a simple Mustache replacement?  Yes.

    require 'pencil_mustache'
    >> require 'pencil_mustache' # Assuming it's in your $LOAD_PATH
    => true
    >> PencilMustache.render("Hello {{planet}}!", :planet => "World")
    => "Hello World!"
    >> PencilMustache.render("Hello {{planet}}!", :planet => "Earth")
    => "Hello Earth!"
    >> PencilMustache.render("Hello {{planet}}!", :planet => "Omicron Persei 8")
    => "Hello Omicron Persei 8!"

Example with multiple tokens:

    why-mad-lib
 
It's so small ([15 lines](https://github.com/benjaminoakes/pencil_mustache/blob/master/lib/pencil_mustache.rb)), you might as well copy it into your app. Or just use the same `gsub` feature when you need it.

[Code](https://github.com/benjaminoakes/pencil_mustache/blob/master/lib/pencil_mustache.rb).

I made it into a tiny gem; **no dependencies** other than Ruby 1.9.

    gem install pencil_mustache

It's really simple... because it doesn't need to be complex for simple use cases.

If there's time:  Misc discussion about stuff built into Ruby 1.9:  `minitest` (instead of `rspec`), simple `gemspec`, etc.
