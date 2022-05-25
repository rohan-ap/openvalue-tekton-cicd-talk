package eu.openvalue.tektoncicd.hws;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.http.MediaType.*;

@RestController
public class HelloWorldResource {

    @GetMapping(produces = {TEXT_PLAIN_VALUE})
    public String helloWorld() {
        return "Hello OpenValue Meetup!";
    }

}
