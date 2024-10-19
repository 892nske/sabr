CREATE TABLE seasons (
    season_id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    start_date DATE,
    end_date DATE
);