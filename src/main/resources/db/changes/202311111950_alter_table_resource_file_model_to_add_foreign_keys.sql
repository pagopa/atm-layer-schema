ALTER TABLE resource_file_model ADD workflow_resource_id uuid NULL;
ALTER TABLE resource_file_model ADD resource_id uuid NULL;
ALTER TABLE resource_file_model ADD CONSTRAINT resource_file_model_fk FOREIGN KEY (workflow_resource_id) REFERENCES workflow_resource(workflow_resource_id);
ALTER TABLE resource_file_model ADD CONSTRAINT resource_file_model_fk_1 FOREIGN KEY (resource_id) REFERENCES resource_entity(resource_id);