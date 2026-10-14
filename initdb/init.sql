
create table if not exists items (
  id generated always as identity,
  full_path varchar(200) not null unique,
  label varchar(50) not null,
  size int not null,
  created_at timestamp not null with time zone default now(),
  local bool not null default true -- the item is store in our object storage database or outside.
);

create index idx_fullpath_label on items ( full_path, label );

