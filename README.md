# Udacity Project 2
## Swiss Tournament

### Project Description
This program runs a Python module utilizing a PostgreSQL database to keep track of players
and match results.

The tournament utilizes the Swiss pairing method of tournament play. Players are not eliminated and instead are paired as closely as possible by the number of wins and losses each player has.  

## Installation Instructions:

###Install Virtualbox###
https://www.virtualbox.org/wiki/Downloads

###Install Vagrant###
https://www.vagrantup.com/downloads

###Clone the Repository###

	$ git clone https://github.com/cameronhopkin/tournament.git
	$ cd tournament
	$ cd vagrant

###Launch Vagrant###

	$ vagrant up && vagrant ssh

###Enter the Tournament###

	$ cd /
	$ cd vagrant/tournament

###Initialize the database###

	$ psql
	$ vagrant=> \i tournament.sql
	$ vagrant=> \q

##Testing and Verification
###Check for the files###
#####tournament.py#####
Contains Python Moduel for Swiss Tournament
#####tournament.sql
Contains the PostgreSQL database creation and queries
#####tournament_test.py
Contains the test cases for tournament.py

###Run the test file###

	$ python tournament_test.py

Verify the tests return the following:

	1. Old matches can be deleted.
	2. Player records can be deleted.
	3. After deleting, countPlayers() returns zero.
	4. After registering a player, countPlayers() returns 1.
	5. Players can be registered and deleted.
	6. Newly registered players appear in the standings with no matches.
	7. After a match, players have updated standings.
	8. After one match, players with one win are paired.
	Success!  All tests pass!

###Shutdown and Cleanup###

	$ vagrant halt && vagrant destroy

###References:###
* http://bobby-tables.com
* http://initd.org/psycopg/docs/
* http://www.postgresqltutorial.com
* www.postgresql.org
* https://stackoverflow.com/questions/14880192/iterate-a-list-of-tuples
* http://www.tutorialspoint.com/postgresql
* https://www.udacity.com/course/viewer#!/c-nd004/l-3532028970/m-3631428767
* https://www.virtualbox.org/wiki/Downloads
* https://www.vagrantup.com/
* http://www.wizards.com/dci/downloads/swiss_pairings.pdf
* http://zetcode.com/db/postgresqlpythontutorial/
