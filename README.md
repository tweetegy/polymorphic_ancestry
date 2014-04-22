#Polymorphic Ancestry Example

Example Rails app to demo 'nested polymorphic comments solution with Ancestry Gem'

For more details about the story check the following blog post on [tweetegy.com](http://www.tweetegy.com/2013/04/create-nested-comments-in-rails-using-ancestry-gem/)

## Installation / Try this out at home

1. Clone this repo to your own computer

2. Run the following to install required gems (**--path is optional**)

 ```
bundle install --path vendor/bundle
```

3. Run the following to setup the database:

 ```
bundle exec rake db:setup
```

4. Run the following to get some sample data:

 ```
bundle exec rake db:populate
```

5. Start the application:

 ```
bundle exec rails s
```

Visit the application at http://localhost:3000 and click around.
