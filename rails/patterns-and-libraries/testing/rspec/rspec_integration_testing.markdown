RSpec Integration Testing
=========================

## How To Start
### Resources To Reference

  - [Relish-App Rspec Feature](https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec)
  - [RSpec Github](https://github.com/rspec/rspec)
  - [ThoughtBot Rails Testing](http://robots.thoughtbot.com/how-we-test-rails-applications)
  - [ThoughtBot Capybara](http://robots.thoughtbot.com/rspec-integration-tests-with-capybara)
  - [Treehouse Blog](http://blog.teamtreehouse.com/an-introduction-to-rspec)
  - [Capybara](https://github.com/jnicklas/capybara)
  - [Capybara Docs](http://rubydoc.info/github/jnicklas/capybara)

### In Your Project

  The RSpec Gem is really a collection of three separate Gems:
  - rspec-core
  - rspec-expectations
  - rspec-mocks

To get started, either run `Gem install rspec`, or put `rspec` in your
Gemfile. If you added `rspec` to the Gemfile, don't forget to run `bundle install`
in the terminal in your project's directory root.

**RSpec Feature Tests Require `capybara`**. Do the same as above for `capybara`.

### File Directory Structure
RSpec testing will be set up in the `spec` directory in the project root. Inside
the spec directory you will have subdirectories such as:
  -  models
  -  features
  -  mailers
  -  support
  -  controllers

In addition to these directories you will usually have a `spec_helper.rb` file
which contains test helper methods, and anything that needs to be required for
any of your tests to run, to avoid having to require files more than once in
different locations. In a rails project with RSpec the spec helper will be
where you `require 'rspec/rails'` and `require 'rspec/autorun'`.

Inside the features directory you will have separate files for each feature you
are testing. So you may have files named **user_edits_profile_spec.rb** and
**user_signs_up_spec.rb** and such.

## Feature Testing
Feature (or integration) testing is focused on testing an application from end
to end, from the perspective of the user (or browser). In this article we will
use Capybara with Rspec to demonstrate the feature spec process.

When building feature specs, put yourself in the users seat and navigate your
application just as they would. With commands as simple as `visit sign_up_path`
and `click_button 'Submit'`.

## Examples

Here is an example of testing the user sign up process. This file would be located
in the **features** directory inside of the **spec** directory. You will need to
`require capybara/rspec` in the spec_helper file.

```ruby
   scenario "Successful Registration" do
    visit "/"
    click_link "sign up"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    page.should have_content "You are now signed up for Savings Multiplied!"
  end
```
You can see how readable the format is. This particular feature will probably be
used over and over in your testing within other tests. So to save time and prevent
repeating yourself constantly, move this into a support file. This will be located
in `spec/support/features/session_helpers.rb`. Then put the code from above into
that module and you can reuse it anywhere you would like:

```ruby
  module Features
    module SessionHelpers
      def sign_up_with(email, password, password_confirm)
      visit sign_up_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in "Password confirmation", with: password_confirm
      click_button 'Sign up'
    end
  end
```
Then in your feature specs you can use that method and not write it out every time.

In order for this to work it does require you to share this code between integration
tests.

```ruby
  # spec/support/features.rb

  RSpec.configure do |config|
  config.include Features::SessionHelpers, type: :feature
  end
```

To see what kind of assertions you can make, check the a cheat sheet [here](https://gist.github.com/them0nk/2166525)
or check out the official documentation [here](http://rubydoc.info/github/jnicklas/capybara/master)
