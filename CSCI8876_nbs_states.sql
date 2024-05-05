-- Use my database in mysql
USE mhartnett;

-- Drop table if it already exists
DROP TABLE IF EXISTS nbsStates;

--DDL to create nbsStates
CREATE TABLE nbsStates (
  state_name VARCHAR(20),
  state_abbrev VARCHAR(2),
  screened_conditions INT,
  PRIMARY KEY (state_name)
  );

-- DML statements
INSERT INTO nbsStates VALUES (
  "Nebraska",
  "NE",
  60
  );

INSERT INTO nbsStates VALUES (
  "Colorado",
  "CO",
  48
  );

INSERT INTO nbsStates VALUES (
  "Iowa",
  "IA",
  56
  );

INSERT INTO nbsStates VALUES (
  "South Dakota",
  "SD",
  53
  );

INSERT INTO nbsStates VALUES (
  "Minnesota",
  "MN",
  64
  );

INSERT INTO nbsStates VALUES (
  "Kansas",
  "KS",
  34
  );

INSERT INTO nbsStates VALUES (
  "Wisconsin",
  "WI",
  52
  );

INSERT INTO nbsStates VALUES (
  "Illinois",
  "IL",
  64
  );

INSERT INTO nbsStates VALUES (
  "Michigan",
  "MI",
  59
  );

INSERT INTO nbsStates VALUES (
  "Ohio",
  "OH",
  47
  );
