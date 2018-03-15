package club.cheapok.swf.service;

import club.cheapok.swf.model.User;
import org.springframework.stereotype.Service;

import java.util.Objects;


@Service
public class UserService {

    public String checkUser(final User user) {
        return Objects.equals(user.getName(), "user") && Objects.equals(user.getPassword(), "pass") ?
                "success" :
                "failed";
    }

}
