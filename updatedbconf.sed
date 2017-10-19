#!/usr/bin/sed -E -f
1 {
  i\
truncate table cas_settings_table;
  i\
alter sequence cas_settings_table_id_seq restart with 1;
}
$ {
  a\
select * from cas_settings_table;
}
/^#/d
/^[[:blank:]]*$/d
s/([^=]+)=([^#]*)(.*#.*)?/insert into cas_settings_table (name, value) values ('\1','\2');/
