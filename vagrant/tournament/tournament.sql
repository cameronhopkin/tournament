-- Written by Cameron Hopkin for Udacity Project 2

-- Table definitions for the tournament project.

-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database named tournament
CREATE DATABASE tournament;

-- Connect to the database
\c tournament

-- Create player table set player_id as primary key for unique id
CREATE TABLE player(
  player_id serial PRIMARY KEY,
  player_name text
);

-- Creates match table with Foreign Key to player
CREATE TABLE match (
  match_id serial PRIMARY KEY,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES player(player_id),
  FOREIGN KEY(loser) REFERENCES player(player_id)
);

-- Creates a view of matches played sorted by won count
CREATE VIEW standings AS
SELECT p.player_id AS id, p.player_name AS name,
(SELECT count(*) FROM match WHERE match.winner = p.player_id) as wins,
(SELECT count(*) FROM match WHERE p.player_id in (winner, loser)) as matches
FROM player p
GROUP BY p.player_id
ORDER BY wins DESC;
