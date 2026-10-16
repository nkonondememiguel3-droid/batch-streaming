
alter table items
  drop column full_path,
  add column object_key varchar(200) not null unique,
  add column sha256 char(64) not null unique,
  add column content_type text not null;

create table if not exists item_sources (
  id bigint generated always as identity primary key,
  item_id bigint not null references items (id) on delete cascade,
  source text not null,
  source_path text not null,
  unique(source, source_path)
);

