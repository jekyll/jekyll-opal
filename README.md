# Jekyll-Opal

Let Jekyll convert your Ruby into JavaScript using [Opal](https://github.com/opal/opal).

[![Build Status](https://travis-ci.org/jekyll/jekyll-opal.svg?branch=master)](https://travis-ci.org/jekyll/jekyll-opal)

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll-opal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-opal

## Usage

Write your Opal in `.opal` files (be sure to add the two `---` lines at the
top to make them pages!!)

This plugin comes with a generator which creates the Opal library file in
the destination, under `js/opal.js`, if it's not already there. To prevent
backwards-incompatible sites, we ship a `{{ site.opal.url }}` variable for
your use in your sites. When output, it will look like this: `/js/opal.js`.

If your site is served in a subfolder (i.e. `http://example.org/subfolder/`), simply prepend a baseurl:

```html
<script src="{{ site.opal.url | prepend:"my_subfolder" }}"></script>
```

You can even prepend variables! Perhaps a URL?

```html
<script src="{{ site.opal.url | prepend:"my_subfolder" | prepend:site.url }}"></script>
```

Feel free to chain them like that -- they're just Liquid filters.

File an issue if something isn't clear!

## Contributing

1. Fork it ( https://github.com/jekyll/jekyll-opal/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT. See the [License](LICENSE.txt) file for more details
