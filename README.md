# README

![Build Status](https://codeship.com/projects/720af250-0688-0135-c77a-621c5691c49a/status?branch=master)
![Code Climate](https://codeclimate.com/github/marclevetin/launch-academy-group-project.png)
![Coverage Status](https://coveralls.io/repos/marclevetin/launch-academy-group-project/badge.png)

README File

OMELETTE REVIEW SITE

  Our group is creating an omelette review website so that people can have a forum
  in which to discuss, rate, and add new omelettes to the larger community. This
  site was devised on the premise of creating a fun app that could easily be transformed
  on the front-end into something memorable (even though the subject matter be mundane).

GETTING STARTED

  To gain access to a working copy of the app, place these commands in Terminal:
  'git clone https://github.com/marclevetin/launch-academy-group-project.git'

PREREQUISITES

  1)Install the proper gemfiles :
      gem 'jquery-rails'
      gem 'foundation-rails'
      gem 'devise'

      group :development do
        gem 'listen', '~> 3.0.5'
        gem 'spring'
        gem 'spring-watcher-listen', '~> 2.0.0'
      end

      group :development, :test do
        gem 'capybara'
        gem 'factory_girl'
        gem 'launchy', require: false

        ...etc

    2)Configure Git and Gitub
      Follow the guidelines in the following link :
        https://learn.launchacademy.com/teams/boston-16/curricula/on-campus-boston-16/
        lesson_groups/weeks_7_&_8:_group_project/lessons/getting-started-with-git-and-github

    3)Add REACTjs to Rails
      Follow the guidelines in the following link :
        https://learn.launchacademy.com/teams/boston-16/curricula/on-campus-boston-16/
        lesson_groups/week_6:_rails/lessons/adding-react-to-rails

            -start by creating a package.json file in the root directory of our Rails application
            -This file will specify all the NPM packages that we will need
            -$ npm install
            -Then we will create a react folder in the root directory of our Rails application.
            -Fill the contents of your main.js, exampleTest.js, testHelper.js, .babelrc, karma.conf.js, webpack.config.js
            .gitignore
            -$ npm run webpack
            -$ npm start

    4)Install Devise into project
      Follow the guidelines in the following link :
        https://learn.launchacademy.com/teams/boston-16/curricula/on-campus-boston-16/
        lesson_groups/weeks_7_&_8:_group_project/lessons/devise-authentication

            -Add gem "devise" to the Gemfile.
            -Bundle and install Devise with bundle && rails generate devise:install && rails generate devise:views
            -Generate the User model with rails generate devise <Model Name (usually user)>


DEPLOYMENT

    In the terminal, run :
    - $ rails s
        to start the rails server. in the browser, go to https://localhost:/3000
    -$ npm start
        to run the reactJS server

    HEROKU
      The URL for Heroku is :


AUTHORS

    -Marc Levetin
    -Joseph Malochee'
    -Tiago Donascimento
    -Solomon Goldiamond

ACKNOWLEDGEMENTS...
