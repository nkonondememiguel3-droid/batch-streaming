
alter table items
  add column full_path varchar(200) not null unique,drop column object_key,
  drop column sha256,
  drop column content_type;

drop table if exists items_source;

