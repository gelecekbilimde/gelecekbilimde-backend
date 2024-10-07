create table if not exists gb_permission
(
  id          varchar(36)  not null primary key,
  description varchar(255) not null,
  name        varchar(255) not null,
  is_hidden   boolean,
  status      varchar(25),
  created_by  varchar(255) not null,
  created_at  timestamp(0) not null,
  updated_by  varchar(255),
  updated_at  timestamp(0),
  constraint c__gb_permission__status check ( status in ('ACTIVE', 'PASSIVE'))
);


create table if not exists gb_role
(
  id          varchar(36)  not null primary key,
  name        varchar(55)  not null,
  description varchar(255) not null,
  status      varchar(25)  not null,
  created_by  varchar(255) not null,
  created_at  timestamp(0) not null,
  updated_by  varchar(255),
  updated_at  timestamp(0),
  constraint u__gb_role__name unique (name),
  constraint c__gb_role__status check (status in ('ACTIVE', 'PASSIVE'))
);


create table if not exists gb_role_permission
(
  id            bigint generated always as identity primary key,
  role_id       varchar(36) not null,
  permission_id varchar(36) not null,
  constraint u__gb_role_permission__role_id__permission_id unique (role_id, permission_id),
  constraint fk__gb_role_permission__role_id foreign key (role_id) references gb_role (id),
  constraint fk__gb_role_permission__permission_id foreign key (permission_id) references gb_permission (id)
);


create table if not exists gb_user
(
  id          varchar(36)  not null primary key,
  role_id     varchar(36)  not null,
  email       varchar(255) not null,
  password    varchar(255) not null,
  first_name  varchar(25)  not null,
  last_name   varchar(25)  not null,
  avatar_path varchar(255),
  biography   text,
  birth_date  date,
  degree      varchar(30),
  gender      varchar(25),
  status      varchar(25)  not null,
  created_by  varchar(255) not null,
  created_at  timestamp(0) not null,
  updated_by  varchar(255),
  updated_at  timestamp(0),
  constraint fk__gb_user__role_id foreign key (role_id) references gb_role (id),
  constraint c__gb_user__status check ( status in ('NOT_VERIFIED', 'VERIFIED', 'BLOCKED'))
);


create table if not exists gb_user_verification
(
  id         varchar(36)  not null primary key,
  user_id    varchar(36)  not null,
  status     varchar(25)  not null,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint fk__gb_user_verification__user_id foreign key (user_id) references gb_user (id)
);

create table if not exists gb_user_follow
(
  id               bigint generated always as identity primary key,
  follower_user_id varchar(36) not null,
  followed_user_id varchar(36) not null,
  constraint u__gb_user_follow__follower_user_id__followed_user_id unique (follower_user_id, followed_user_id),
  constraint fk__gb_user_follow__follower_user_id foreign key (follower_user_id) references gb_user (id),
  constraint fk__gb_user_follow__followed_user_id foreign key (followed_user_id) references gb_user (id)
);


create table if not exists gb_notification_token
(
  id           bigint generated always as identity primary key,
  user_id      varchar(36),
  device_id    varchar(255),
  device_token text,
  created_by   varchar(255) not null,
  created_at   timestamp(0) not null,
  updated_by   varchar(255),
  updated_at   timestamp(0),
  CONSTRAINT fk__gb_notification_token__user_id FOREIGN KEY (user_id) REFERENCES gb_user (id)
);


create table if not exists gb_category
(
  id           bigint generated always as identity primary key,
  order_number integer      not null,
  parent_id    bigint,
  name         varchar(50)  not null,
  description  varchar(255) not null,
  slug         varchar(50)  not null,
  icon         varchar(50),
  created_by   varchar(255) not null,
  created_at   timestamp(0) not null,
  updated_by   varchar(255),
  updated_at   timestamp(0)
);

create table if not exists gb_media_group
(
  id         bigint generated always as identity primary key,
  user_id    varchar(36)  not null,
  parent_id  bigint,
  name       varchar(50),
  status     varchar(25),
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint fk__gb_media__user_id foreign key (user_id) references gb_user (id),
  constraint c__gb_media_group__status check ( status in ('ACTIVE', 'DELETED'))
);


create table if not exists gb_media
(
  id           bigint generated always as identity primary key,
  user_id      varchar(36)  not null,
  group_id     bigint,
  type         varchar(25)  not null,
  is_shared    boolean      not null default false,
  title        varchar(100) not null,
  content_type varchar(25)  not null,
  url          varchar(255) not null,
  status       varchar(25),
  created_by   varchar(255) not null,
  created_at   timestamp(0) not null,
  updated_by   varchar(255),
  updated_at   timestamp(0),
  constraint fk__gb_media__user_id foreign key (user_id) references gb_user (id),
  constraint fk__gb_media__group_id foreign key (group_id) references gb_media_group (id),
  constraint c__gb_media__status check ( status in ('ACTIVE', 'DELETED'))
);


create table if not exists gb_post
(
  id                varchar(36)  not null primary key,
  category_id       bigint       not null,
  user_id           varchar(36)  not null,
  header            varchar(255) not null,
  content           text         not null,
  like_count        integer default 0,
  slug              varchar(255) not null,
  is_active         boolean default false,
  copyright_control boolean default false,
  typo_control      boolean default false,
  dangerous_control boolean default false,
  last_process      varchar(25),
  status            varchar(25),
  created_by        varchar(255) not null,
  created_at        timestamp(0) not null,
  updated_by        varchar(255),
  updated_at        timestamp(0),
  constraint fk__gb_post__user_id foreign key (user_id) references gb_user (id),
  constraint fk__gb_post__category_id foreign key (category_id) references gb_category (id),
  constraint c__gb_post__status check ( status in ('ACTIVE', 'PASSIVE'))
);

create table if not exists gb_post_like
(
  id         bigint generated always as identity primary key,
  post_id    varchar(36)  not null,
  user_id    varchar(36)  not null,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint u__gb_post_like__post_id__user_id unique (post_id, user_id),
  constraint fk__gb_post_like__user_id foreign key (user_id) references gb_user (id),
  constraint fk__gb_post_like__post_id foreign key (post_id) references gb_post (id)
);

create table if not exists gb_comment
(
  id         bigint generated always as identity primary key,
  post_id    varchar(36)  not null,
  message    text         not null,
  like_count integer      null default 0,
  status     varchar(25)  not null,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint fk__gb_comment__post_id foreign key (post_id) references gb_post (id),
  constraint c__gb_comment__status check ( status in ('DONE', 'DELETED'))
);


create table if not exists gb_post_media
(
  id         bigint generated always as identity primary key,
  media_id   bigint       not null,
  post_id    varchar(36)  not null,
  is_cover   boolean      not null default false,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint fk__gb_post_media__post_id foreign key (post_id) references gb_post (id),
  constraint fk__gb_post_media__media_id foreign key (media_id) references gb_media (id)
);


create table if not exists gb_post_process
(
  id                bigint generated always as identity primary key,
  post_id           varchar(36)  not null,
  user_id           varchar(36)  not null,
  content           text         not null,
  header            varchar(255) not null,
  message           text,
  process           varchar(25),
  slug              varchar(255) not null,
  copyright_control boolean default false,
  typo_control      boolean default false,
  dangerous_control boolean default false,
  done              boolean,
  created_by        varchar(255) not null,
  created_at        timestamp(0) not null,
  updated_by        varchar(255),
  updated_at        timestamp(0),
  constraint fk__gb_post_process__post_id foreign key (post_id) references gb_post (id),
  constraint fk__gb_post_process__user_id foreign key (user_id) references gb_user (id)
);


create table if not exists gb_invalid_token
(
  id         bigint generated always as identity primary key,
  token_id   varchar(36)  not null,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0)
);


create table if not exists gb_setting
(
  id         bigint generated always as identity primary key,
  group_name varchar(100) not null,
  name       varchar(100) not null,
  definition text,
  is_hidden  boolean,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint u__gb_setting__name__group_name unique (group_name, name)
);


create table if not exists gb_ticket
(
  id          varchar(36)  not null primary key,
  user_id     varchar(36)  not null,
  subject     varchar(255) not null,
  description text         not null,
  status      varchar(50)  not null,
  created_by  varchar(255) not null,
  created_at  timestamp(0) not null,
  updated_by  varchar(255),
  updated_at  timestamp(0),
  constraint fk__gb_ticket__user_id foreign key (user_id) references gb_user (id),
  constraint c__gb_ticket__subject check ( status in ('TECHNICAL', 'POST', 'YOUR_QUESTION_REQUESTS', 'FEEDBACK',
                                                      'COLLABORATION', 'OTHER')),
  constraint c__gb_ticket__status check ( status in ('OPEN', 'IN_PROGRESS', 'ON_HOLD', 'CLOSED',
                                                     'REOPENED', 'CANCELED', 'RESOLVED'))
);


create table if not exists gb_ticket_message
(
  id         bigint generated always as identity primary key,
  ticket_id  varchar(36)  not null,
  user_id    varchar(36)  not null,
  message    text,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0)
);


create table if not exists gb_role_application
(
  id      varchar(36) not null primary key,
  user_id varchar(36) not null,
  role_id varchar(36) not null,
  status  varchar(10) not null,
  created_by varchar(255) not null,
  created_at timestamp(0) not null,
  updated_by varchar(255),
  updated_at timestamp(0),
  constraint fk__gb_role_application__user_id foreign key (user_id) references gb_user (id),
  constraint fk__gb_role_application__role_id foreign key (role_id) references gb_role (id),
  constraint c__gb_role_application__status check ( status in ('IN_REVIEW', 'CANCELLED', 'APPROVED', 'REJECTED'))
);
