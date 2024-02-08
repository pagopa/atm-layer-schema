CREATE TABLE user_profile
(
    user_id varchar(255) NOT NULL,
    profile integer NOT NULL,
    created_at timestamp(6) without time zone,
    last_updated_at timestamp(6) without time zone,
    CONSTRAINT user_profile_pkey PRIMARY KEY (user_id)
)
