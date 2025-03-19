create table player_personal_info (
  player_id character varying(20) not null
  , player_name character varying(100) not null
  , player_name_kana character varying(100) not null
  , jersey_number character varying(10)
  , position character varying(50)
  , batting_hand character varying(10)
  , throwing_hand character varying(10)
  , height_cm integer
  , weight_kg integer
  , birthdate date
  , career text
  , draft text
  , created_at timestamp(6) without time zone default CURRENT_TIMESTAMP
  , updated_at timestamp(6) without time zone default CURRENT_TIMESTAMP
  , primary key (player_id)
);
