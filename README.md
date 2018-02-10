# BreadcrumbsOnRails::JsonLd

[![Build Status](https://travis-ci.org/necojackarc/breadcrumbs_on_rails-json_ld.svg?branch=master)](https://travis-ci.org/necojackarc/breadcrumbs_on_rails-json_ld)

BreadcrumbsOnRails::JsonLd provides a custom builder for [BreadcrumbsOnRails](https://github.com/weppos/breadcrumbs_on_rails).

## Usage
Pass `builder: BreadcrumbsOnRails::JsonLd::Builder` option to `render_breadcrumbs` and
enclose them with `script type="application/ld+json"` tag as follows:

```erb
<script type="application/ld+json">
  <%= render_breadcrumbs builder: BreadcrumbsOnRails::JsonLd::Builder %>
</script>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'breadcrumbs_on_rails-json_ld'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install breadcrumbs_on_rails-json_ld
```

## TODO
* Add tests

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
