create table if not exists score
(
    id      serial
        primary key,
    geom_id text,
    plus    integer,
    minus   integer
);

alter table score
    owner to postgres;

create table if not exists aminity
(
    id          serial
        primary key,
    fid         text,
    aminity     text,
    lat         double precision,
    lon         double precision,
    name        text,
    addressline text,
    type        text,
    info        jsonb,
    build       integer,
    geom        geometry(Point, 4326)
);

alter table aminity
    owner to postgres;

