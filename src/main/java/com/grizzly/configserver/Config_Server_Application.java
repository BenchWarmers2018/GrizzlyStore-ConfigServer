package com.grizzly.config_server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
public class Config_Server_Application {

    public static void main(String[] args) {
        SpringApplication.run(Config_Server_Application.class, args);
    }
}
