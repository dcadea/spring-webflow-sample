package club.cheapok.swf.service;

import club.cheapok.swf.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {

    private final List<User> users;

    public UserService() {
        this.users = new ArrayList<>();
        this.users.add(new User("user", "pass"));
    }

    public String checkUser(final User user) {
        return this.users.contains(user) ? "success" : "failed";
    }

    public void createUser(final User user) {
        this.users.add(user);
    }
}
