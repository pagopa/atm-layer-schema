
CREATE TABLE resource_entity (
                                                     created_at timestamp(6) NULL,
                                                     last_updated_at timestamp(6) NULL,
                                                     resource_id uuid NOT NULL,
                                                     created_by varchar(255) NULL,
                                                     file_name varchar(255) NULL,
                                                     last_updated_by varchar(255) NULL,
                                                     resource_type varchar(255) NULL,
                                                     sha256 varchar(255) NULL,
                                                     CONSTRAINT resource_entity_pkey PRIMARY KEY (resource_id),
                                                     CONSTRAINT resource_entity_sha256_key UNIQUE (sha256)
);


CREATE TABLE workflow_resource (
                                                       definition_version_camunda int4 NULL,
                                                       created_at timestamp(6) NULL,
                                                       last_updated_at timestamp(6) NULL,
                                                       deployment_id uuid NULL,
                                                       workflow_resource_id uuid NOT NULL,
                                                       camunda_definition_id varchar(255) NULL,
                                                       created_by varchar(255) NULL,
                                                       definition_key varchar(255) NULL,
                                                       deployed_file_name varchar(255) NULL,
                                                       description varchar(255) NULL,
                                                       last_updated_by varchar(255) NULL,
                                                       resource varchar(255) NULL,
                                                       resource_type varchar(255) NULL,
                                                       sha256 varchar(255) NULL,
                                                       status varchar(255) NULL,
                                                       CONSTRAINT workflow_resource_pkey PRIMARY KEY (workflow_resource_id),
                                                       CONSTRAINT workflow_resource_sha256_key UNIQUE (sha256)
);