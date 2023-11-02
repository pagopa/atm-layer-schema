

CREATE TABLE bpmn_bank_config (
                                                  bpmn_model_version int8 NOT NULL,
                                                  created_at timestamp(6) NULL,
                                                  last_updated_at timestamp(6) NULL,
                                                  bpmn_id uuid NOT NULL,
                                                  acquirer_id varchar(255) NOT NULL,
                                                  branch_id varchar(255) NOT NULL,
                                                  created_by varchar(255) NULL,
                                                  function_type varchar(255) NULL,
                                                  last_updated_by varchar(255) NULL,
                                                  terminal_id varchar(255) NOT NULL,
                                                  CONSTRAINT bpmn_bank_config_pkey PRIMARY KEY (bpmn_model_version, bpmn_id, acquirer_id, branch_id, terminal_id)
);

CREATE TABLE bpmn_version (
                                              definition_version_camunda int4 NULL,
                                              enabled bool NULL DEFAULT true,
                                              created_at timestamp(6) NULL,
                                              last_updated_at timestamp(6) NULL,
                                              model_version int8 NOT NULL,
                                              bpmn_id uuid NOT NULL,
                                              deployement_id uuid NULL,
                                              camunda_definition_id varchar(255) NULL,
                                              created_by varchar(255) NULL,
                                              definition_key varchar(255) NULL,
                                              deployed_file_name varchar(255) NULL,
                                              description varchar(255) NULL,
                                              function_type varchar(255) NULL,
                                              last_updated_by varchar(255) NULL,
                                              resource varchar(255) NULL,
                                              sha256 varchar(255) NULL,
                                              status varchar(255) NULL,
                                              CONSTRAINT bpmn_version_pkey PRIMARY KEY (model_version, bpmn_id),
                                              CONSTRAINT bpmn_version_sha256_key UNIQUE (sha256)
);

CREATE TABLE resource_file_model (
                                                     bpmn_model_version int8 NULL,
                                                     created_at timestamp(6) NULL,
                                                     last_updated_at timestamp(6) NULL,
                                                     bpmn_id uuid NULL,
                                                     id uuid NOT NULL,
                                                     created_by varchar(255) NULL,
                                                     "extension" varchar(255) NULL,
                                                     file_name varchar(255) NULL,
                                                     last_updated_by varchar(255) NULL,
                                                     resource_type varchar(255) NOT NULL,
                                                     storage_key varchar(255) NOT NULL,
                                                     CONSTRAINT resource_file_model_bpmn_id_bpmn_model_version_key UNIQUE (bpmn_id, bpmn_model_version),
                                                     CONSTRAINT resource_file_model_pkey PRIMARY KEY (id),
                                                     CONSTRAINT fkonawsqvakbrsv18ruamqs66j5 FOREIGN KEY (bpmn_model_version,bpmn_id) REFERENCES bpmn_version(model_version,bpmn_id)
);