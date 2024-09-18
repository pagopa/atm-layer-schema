CREATE TABLE user_profiles
(
    profile_id      int4         NOT NULL,
    created_at      timestamp(6) NOT NULL,
    last_updated_at timestamp(6) NOT NULL,
    user_id         varchar(255) NOT NULL,
    CONSTRAINT user_profiles_pkey PRIMARY KEY (profile_id, user_id)
);

ALTER TABLE user_profiles ADD CONSTRAINT fk1000rudncghbgrpmnccl8eyw7 FOREIGN KEY (profile_id) REFERENCES profile(profile_id);
ALTER TABLE user_profiles ADD CONSTRAINT fkjcad5nfve11khsnpwj1mv8frj FOREIGN KEY (user_id) REFERENCES users(user_id);