# Rails Journal
========

## by Debbie Cravey

Rails Journal is a blog application built with Ruby on Rails version 4.2.0 and an ActiveRecord database. It allows a user to create, edit, and delete blog posts, and allows for users to make, edit, and delete comments on individual entries. Users must be logged-in to make changes or additions.

The app will send a text message to me whenever a user posts a comment. (I am using a trial Twilio account, which only allows texts to verified numbers.) This text response functions both locally and on the Heroku app.

Check out a demo at:
https://salty-ridge-9486.herokuapp.com/

Installation
------------

Install Rails Journal by first cloning the repository.

```
$ git clone https://github.com/dacravey/rails_journal.git
```


To create database, open terminal and run

```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Dependencies
------------
Install the following gems:
* 'rails'
* 'pg'
* 'bootstrap-sass', '~> 3.3.4'
* 'sass-rails'
* 'uglifier'
* 'coffee-rails'
* 'jquery-rails'
* 'turbolinks'
* 'jquery-turbolinks'
* 'web-console'
* 'spring'
* 'quiet_assets'
* 'factory_girl_rails'
* 'devise'
* 'rest-client'
* 'rails_12factor'

NOTE: Twilio credentials should be stored in a .env file in order to keep them secure.

Run the App
-----------
- start postgresql
- open browser to localhost:3000

Contribute
----------
- Issue Tracker: github.com/dacravey/rails_journal/issues
- Source Code: github.com/dacravey/rails_journal

Support
-------

If you are having issues, please let me know at: cinder.the.rogue@gmail.com

Bug reports
===========

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help with fixing the possible bug. I also welcome your help if you choose to fork and send a pull request.

https://github.com/dacravey/rails_journal/issues

License
=======

MIT License. Copyright 2015 Debbie Cravey
