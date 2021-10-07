package com.works.vetrestapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

@SpringBootApplication
@EnableElasticsearchRepositories(basePackages = "com.works.vetrestapi.repositories")
public class VetRestApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(VetRestApiApplication.class, args);
    }

}
