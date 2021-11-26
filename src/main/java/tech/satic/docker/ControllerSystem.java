// Package
package tech.satic.docker;

// Librairie
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Lorince TAWAMBA
 * @version 1.0.0
 * @since 25.11.2021
 */
@RestController
@RequestMapping(path = "/api/v1/appli")
public class ControllerSystem {

    @GetMapping(path = "/info")
    public String info() {
        return "Welcome to SATIC SA";
    }

    @GetMapping(path = "/version")
    public String getCurrentVersion() {
        return "1.0.1";
    }
}
