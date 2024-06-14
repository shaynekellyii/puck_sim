-- create teams table
CREATE TABLE IF NOT EXISTS teams (
    id uuid NOT NULL,
    location TEXT NOT NULL,
    nickname TEXT NOT NULL,
    abbreviation TEXT NOT NULL,
    PRIMARY KEY (id)
);
