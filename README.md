# NetworkConnector

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/network_connector`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
    gem install network_connector
```
## Usage
Once the gem installed you'll need to set your credentials in order to have access to the network.
You'll need to create an env file name under your user home. 
the name should be ~/.network_informations ou ~/.network_informations.env ou ~/network_informations ou ~/network_informations.env
The content should be the following: 
```env
    USERNAME=<your-username>
    PASSWORD=<your-password>
    HAS_CONFIRMATION=true  
    HOST=<your-username>
    INPUT_USERNAME_ID=user.username
    INPUT_PASSWORD_ID=user.password
    SUBMIT_BTN=<html id fo the button>
    CONFIRMATION_BTN=<html id of the confirmation button>
```

Once it is done you can type the following command to connect to the network
```bash
    $ workconnektor
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/network_connector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/network_connector/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NetworkConnector project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/network_connector/blob/master/CODE_OF_CONDUCT.md).
