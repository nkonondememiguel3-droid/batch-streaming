-- all the items in the entire dataset.
create table if not exists items (
  id bigint generated always as identity primary key,
  full_path varchar(200) not null unique,
  label varchar(50) not null,
  size bigint not null,
  created_at timestamptz not null default now (),
  local boolean not null default true -- true: stored in our object storage, false: stored outside
);

-- items only for trainning phase.
create table if not exists train_items (
  id bigint generated always as identity primary key,
  item_id bigint not null unique,
  constraint fk_train_items_item foreign key (item_id) references items (id) on delete cascade
);

-- items only for testing.
create table if not exists test_items (
  id bigint generated always as identity primary key,
  item_id bigint not null unique,
  constraint fk_test_items_item foreign key (item_id) references items (id) on delete cascade
);
