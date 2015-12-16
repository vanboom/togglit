# Togglit

Togglit is a javascript plugin for rails applications that allows you to create
CSS toggle activity easily.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'togglit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install togglit

## Usage

### Toggling table rows.
%table
  %tr
    %td
      = link_to "#", "data-toggler"=>true, "data-toggle"=>"#moredetail", "data-container"=>"tr" do
        %i.fa.fa-caret-down
    %td
      Some table data.
  %tr.hide
    %td{:colspan=>7}
      .hide{:id=>"moredetail"}
        Here is some more detail that will be toggled ON/OFF by Togglit.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/togglit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
