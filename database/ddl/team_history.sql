CREATE TABLE team_history (
    team_history_id SERIAL PRIMARY KEY,
    team_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE, -- 現在も有効な場合はNULL
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    league VARCHAR(50),
    division VARCHAR(50),
    stadium_name VARCHAR(100),
    FOREIGN KEY (team_id) REFERENCES teams(team_id),
    CHECK (start_date <= COALESCE(end_date, '9999-12-31'))
);

-- 重複する期間を防ぐための排他制約（overlapを防止）
CREATE EXTENSION IF NOT EXISTS btree_gist;

ALTER TABLE team_history
  ADD EXCLUDE USING gist (
    team_id WITH =,
    daterange(start_date, COALESCE(end_date, '9999-12-31'), '[]') WITH &&
  );
