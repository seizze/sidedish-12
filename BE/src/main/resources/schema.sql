DROP TABLE IF EXISTS dish CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS dish_category CASCADE;

CREATE TABLE dish
(
    id             bigint primary key auto_increment,
    image          varchar,
    alt            varchar,
    delivery_type  varchar,
    title          varchar,
    description    varchar,
    badge          varchar,
    top_image      varchar,
    thumb_images   varchar,
    point          varchar,
    delivery_info  varchar,
    delivery_fee   varchar,
    s_price        varchar,
    n_price        varchar,
    detail_section varchar
);

CREATE TABLE category
(
    id        bigint primary key auto_increment,
    name      varchar,
    parent_id bigint references category (id)
);

CREATE TABLE dish_category
(
    dish     bigint references dish (id),
    category bigint references category (id),
    primary key (dish, category)
)
