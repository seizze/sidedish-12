DROP TABLE IF EXISTS dish CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS dish_category CASCADE;

CREATE TABLE dish
(
    id             bigint primary key auto_increment,
    image          text,
    alt            varchar(512),
    delivery_type  varchar(512),
    title          varchar(512),
    description    varchar(512),
    badge          varchar(512),
    top_image      text,
    thumb_images   text,
    point          varchar(512),
    delivery_info  varchar(512),
    delivery_fee   varchar(512),
    s_price        varchar(512),
    n_price        varchar(512),
    detail_section text
);

CREATE TABLE category
(
    id        bigint primary key auto_increment,
    name      varchar(20),
    parent_id bigint references category (id)
);

CREATE TABLE dish_category
(
    dish     bigint references dish (id),
    category bigint references category (id),
    primary key (dish, category)
)
