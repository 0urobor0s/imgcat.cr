# imgcat

Crystal port of the iTerm2 imgcat script

* https://www.iterm2.com/documentation-images.html
* https://iterm2.com/utilities/imgcat

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     imgcat:
       github: 0urobor0s/imgcat.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "imgcat"
```

```crystal
content = File.read(filename)
Imgcat.cat(content, STDOUT)
```

## Contributing

1. Fork it (<https://github.com/0urobor0s/imgcat.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
