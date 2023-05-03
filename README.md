Team and Game Tracker

This is a Ruby application built with Sinatra and ActiveRecord that allows users to track information about teams and games. Users can create, read, update, and delete teams and games.

Getting Started

  To get started with the app, clone the repo and then install the needed gems:

    -bundle install

  Next, migrate the database:

    -rake db:migrate

  Finally, run the app in a local server:

    -rake server

Usage



The app includes the following routes:

    -GET /teams -This route returns a list of all teams, including each team's  games.

    -PUT/games/:id -This route allows users to update information about a specific game.

    -DELETE /games/:id -This route allows users to delete a specific game.

    -POST /games -This route allows users to create a new game. The user must provide the names of the two teams playing, the date and location of the game, and the final scores for each team.

Reference 

After starting the server, visit http://localhost:9292 to view the app.