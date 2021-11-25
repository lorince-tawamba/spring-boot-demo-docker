// Package
package tech.satic.docker;

// Librairie
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/**
 * @author Lorince TAWAMBA
 * @version 1.0.0
 * @since 25.11.2021
 */
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    CommandLineRunner start() {
         return  args -> {
             System.out.println("==== Start of the program ====");
         };
    }
}
