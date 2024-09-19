CREATE TABLE users
(
    created_at      timestamp(6) NOT NULL,
    last_updated_at timestamp(6) NOT NULL,
    name            varchar(255) NOT NULL,
    surname         varchar(255) NOT NULL,
    user_id         varchar(255) NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
);