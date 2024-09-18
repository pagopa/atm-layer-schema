CREATE TABLE bank
(
    acquirer_id varchar(255) NOT NULL,
    denomination varchar(255) NOT NULL,
    client_id varchar(255) NOT NULL,
    api_key_id varchar(255) NOT NULL,
    usage_plan_id varchar(255) NOT NULL,
    enabled bool NOT NULL DEFAULT true,
    created_at timestamp(6) without time zone,
    last_updated_at timestamp(6) without time zone,
    CONSTRAINT bank_pkey PRIMARY KEY (acquirer_id)
)