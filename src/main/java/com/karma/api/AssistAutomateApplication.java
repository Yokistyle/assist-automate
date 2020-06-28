package com.karma.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class AssistAutomateApplication {

	public static void main(String[] args) {

		SpringApplication.run(AssistAutomateApplication.class, args);
	}

    @RequestMapping(value = "/")
    public String first() {
        return "index";
    }

    @RequestMapping(value = "/main")
    public String main() {
        return "main";
    }
}
