create table if not exists application_log (
    event_id bigserial,
    event_date timestamp not null default current_timestamp,
    event_level varchar(16) not null default 'info',
    event_logger varchar(64) not null,
    event_message varchar(1024) not null,
    event_exception text
);
create index if not exists application_log_date on application_log (event_date);
create index if not exists application_log_level on application_log (event_level);
create index if not exists application_log_logger on application_log (event_logger);
