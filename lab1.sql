create table users
(
  id SERIAL,
  firstname CHARACTER VARYING(50),
  lastname CHARACTER VARYING(50)
);

alter table users add column isadmin int;
alter table users alter column isadmin TYPE BOOLEAN using isadmin::boolean;
alter table users alter column isadmin set default false;

alter table users drop constraint users_pkey;
alter table users add constraint users_pkey PRIMARY KEY (id);

create table tasks
(
    id SERIAL,
    name varchar(50),
    user_id int
);

drop table tasks;