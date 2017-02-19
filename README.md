# Slow Food Online

An online application to allow restaurant owners to sell food to hungry patrons. Restaurants have menus made up of dishes. Customers can order dishes and pick them up.

Built for the [Craft Academy](http://www.craftacademy.se) programming bootcamp.

### Deployed & Mobile

This project was largely abandoned after three weeks of work, but lives in perpetuity on [Heroku](http://slow-food-august.herokuapp.com/).


# Installation

 To run this on your machine simply fork and clone this repository
 to your computer and run these commands starting form the top:

 ```
 $ bundle install
 ```
 ```
 $ rails db:create
 ```
 ```
 $ rails db:migrate
 ```

# Built with

* [Ruby](https://www.ruby-lang.org/) (version 2.3.0) as a language
* [Ruby on Rails](http://rubyonrails.org/) (Rails 5.0.0.1) as a framework
* [Haml](http://haml.info/) as a template engine
* [PostgreSQL](https://www.postgresql.org/) as our database
* [Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1878955) as our planning tool
* [Cucumber](https://cucumber.io/) for acceptance testing
* [RSpec](http://rspec.info/) for unit testing
* [Travis CI](https://travis-ci.org/) for continuous integration
* [Coveralls](https://coveralls.io/) for test coverage

## Gems of Note
- Devise for User authentication
- [Paperclip](https://github.com/thoughtbot/paperclip) for image uploading
- Geocoder for, of all things, geocoding
- GMaps.js
- Gon for easy transfer of variables between Ruby and Javascript
- Stripe

## Dependencies

* ImageMagick:
```
brew install imagemagick
```
* GhostScript:
```
brew install gs
```

## Contributors

* [Susanna](https://github.com/thesuss)
* [Petronella](https://github.com/PetronellaSimonsbacka)
* [Amber](https://github.com/AmberWilkie)
* [Viktoria](https://github.com/Blokkinen)
* [Jesper](https://github.com/JesperGreen)
