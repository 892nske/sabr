CREATE TABLE standings (
    standing_id SERIAL PRIMARY KEY,
    team_id INT NOT NULL,
    season_id INT NOT NULL,
	league character varying(50),
	games_played INT,
    wins INT,
    losses INT,
	ties INT,
    winning_percentage NUMERIC(5,3),
    games_behind NUMERIC(4,1),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);