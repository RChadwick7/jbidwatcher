drop table events

CREATE TABLE events (
  id integer NOT NULL generated by default as identity (START WITH 1, INCREMENT BY 1),
  entry_id integer default NULL,
  repeat_count integer default 0,
  created_at timestamp default NULL,
  message varchar(255) default NULL,
  title varchar(255) default NULL,
  PRIMARY KEY  (id)
)

CREATE INDEX IDX_Events_Entries ON events(entry_id)