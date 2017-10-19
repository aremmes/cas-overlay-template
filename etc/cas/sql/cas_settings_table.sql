-- CAS configuration registry table
create table if not exists cas_settings_table (
    id serial,
    name varchar(1024) not null unique,
    value text
    );

