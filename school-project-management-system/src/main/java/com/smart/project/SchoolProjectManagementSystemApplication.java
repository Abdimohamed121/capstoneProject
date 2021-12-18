package com.smart.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.smart")
public class SchoolProjectManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(SchoolProjectManagementSystemApplication.class, args);
	}

}
