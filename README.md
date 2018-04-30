# ActivePath Path Hints: 

Path hints for your Rails 5 partials.

## Installation 

Add to your Gemfile:

```ruby
gem 'active_path-path_hints'
```

Add the initializer `config/initializers/active_path.rb` and enable `ActivePath`:

```ruby

ActivePath.configure do |config|

  config.enabled = true

end

```

**Path hints:** (use in development only)


```ruby

config.path_hints = true

```  

HTML comments are added before and after each partial. Here is sample output:

```html
<!-- start pages/content -->
<p>page content</p>
<!-- end pages/content -->
<!-- start example/test -->
<p>example content</p>
<!-- end example/test -->

```
Feel free to [submit issues](https://github.com/active-path/path-hints/issues) or [help make it better](https://github.com/active-path/path-hints/pulls). 