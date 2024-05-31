CREATE TABLE transaction_entity
(
    transaction_id varchar(255) NOT NULL,
    function_type varchar(255) NOT NULL,
    acquirer_id varchar(255) NOT NULL,
    branch_id varchar(255) NOT NULL,
    terminal_id varchar(255) NOT NULL,
    transaction_status varchar(255) NOT NULL,
    created_at timestamp(6) without time zone,
    last_updated_at timestamp(6) without time zone,
    CONSTRAINT transaction_entity_pkey PRIMARY KEY (transaction_id)
)