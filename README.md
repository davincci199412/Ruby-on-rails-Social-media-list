# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version 2.4.1

* Rails version 5.1.4

* Install Rails at the command prompt if you haven't yet:

     $ gem install rails

* Configuration
  Install Postgresql at the command prompt if you haven't yet:

  sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
  wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install postgresql-common
  sudo apt-get install postgresql-9.5 libpq-dev

  Copy source files to spcific directory.
  Change directory to social_media:

  $ cd social_media

* Database and tables creation

  rake db:create
  rake db:migrate

* Database initialization
 
  rake db:seed

* How to run the test suite

  rails sever

  Run with --help or -h for options.

  Using a browser, go to http://localhost:3000 and you'll see: "Social_media_list" site.