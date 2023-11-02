package it.gov.pagopa.atmlayer.service.schema.listener;

import io.quarkus.runtime.Application;
import io.quarkus.runtime.Quarkus;
import io.quarkus.runtime.ShutdownEvent;
import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@ApplicationScoped
public class MigrationCompletionListener {
    private static final Logger logger = LoggerFactory.getLogger(MigrationCompletionListener.class);

    void onStartup(@Observes StartupEvent event) {
        logger.info("Migration Completed.");
        Application app = Application.currentApplication();
        Quarkus.asyncExit();
    }

    void onStop(@Observes ShutdownEvent ev) {
        logger.info("Stopping Application");
    }
}