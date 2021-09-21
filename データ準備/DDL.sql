CREATE TABLE countries (
  --id int NOT NULL PRIMARY KEY IDENTITY(33, 1),
  id int NOT NULL PRIMARY KEY,
  name nvarchar(50) DEFAULT NULL,
  ranking int DEFAULT NULL,
  group_name varchar(1) DEFAULT NULL
);

CREATE TABLE goals (
  --id int NOT NULL PRIMARY KEY IDENTITY(256, 1),
  id int NOT NULL PRIMARY KEY,
  pairing_id int DEFAULT NULL,
  player_id int DEFAULT NULL,
  goal_time nvarchar(10) DEFAULT NULL
);

CREATE TABLE goals_tmp (
  my_country nvarchar(50) DEFAULT NULL,
  enemy_country nvarchar(50) DEFAULT NULL,
  goal_time nvarchar(10) DEFAULT NULL,
  player_name nvarchar(50) DEFAULT NULL
);

CREATE TABLE pairings (
  --id int NOT NULL PRIMARY KEY IDENTITY(256, 1),
  id int NOT NULL PRIMARY KEY,
  kickoff datetime DEFAULT NULL,
  my_country_id int DEFAULT NULL,
  enemy_country_id int DEFAULT NULL
);

CREATE TABLE pairings_tmp (
  kickoff datetime DEFAULT NULL,
  my_country nvarchar(50) DEFAULT NULL,
  enemy_country nvarchar(50) DEFAULT NULL
);

CREATE TABLE players (
  --id int NOT NULL PRIMARY KEY IDENTITY(1024, 1),
  id int NOT NULL PRIMARY KEY,
  country_id int DEFAULT NULL,
  uniform_num int DEFAULT NULL,
  position varchar(2) DEFAULT NULL,
  name nvarchar(50) DEFAULT NULL,
  club nvarchar(50) DEFAULT NULL,
  birth date DEFAULT NULL,
  height int DEFAULT NULL,
  weight int DEFAULT NULL
);

CREATE TABLE players_tmp (
  country nvarchar(50) DEFAULT NULL,
  uniform_num int DEFAULT NULL,
  position varchar(2) DEFAULT NULL,
  name nvarchar(50) DEFAULT NULL,
  club nvarchar(50) DEFAULT NULL,
  birth date DEFAULT NULL,
  height int DEFAULT NULL,
  weight int DEFAULT NULL
);