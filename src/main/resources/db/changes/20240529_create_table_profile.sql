CREATE TABLE profile
(
    profile_id      int4         NOT NULL,
    created_at      timestamp(6) NOT NULL,
    last_updated_at timestamp(6) NOT NULL,
    description     varchar(255) NOT NULL,
    CONSTRAINT profile_pkey PRIMARY KEY (profile_id)
);

INSERT INTO profile (profile_id, created_at, last_updated_at, description)
VALUES (1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Gestione flussi in lettura'),
       (2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Gestione flussi in scrittura'),
       (3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Rilascio BPMN'),
       (4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Emulator'),
       (5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Gestione utenti');